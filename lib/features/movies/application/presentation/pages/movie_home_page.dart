import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:visable_challenge/app/components/error_page.dart';
import 'package:visable_challenge/app/components/loading_indicator.dart';
import 'package:visable_challenge/app/dependancy/injection.dart';
import 'package:visable_challenge/app/visable_theme_data.dart';
import 'package:visable_challenge/app/router/router_key.dart';
import 'package:visable_challenge/features/movies/application/bloc/movies_bloc.dart';
import 'package:visable_challenge/features/movies/application/presentation/widgets/movies_widget.dart';

class MovieHomePage extends StatelessWidget {
  const MovieHomePage({super.key});

  static String get routeName => 'movie_home_page';

  static String get routeLocation => '/$routeName';

  static GoRoute get route => GoRoute(
        name: routeName,
        path: routeLocation,
        parentNavigatorKey: rootNavigatorKey,
        builder: (context, state) => const MovieHomePage(),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: VisableThemeData.lightThemeData.primaryColor,
      body: BlocProvider(
          create: (context) => getIt<MoviesBloc>()
            ..add(const MoviesEvent.loadMovies(movies: [])),
          child: BlocBuilder<MoviesBloc, MoviesState>(
            buildWhen: (previous, current) =>
                previous.movieResults != current.movieResults ||
                previous.status != current.status,
            builder: (context, state) {
              return switch (state.status) {
                MoviesStateStatus.loading => const LoadingIndicator(),
                MoviesStateStatus.error => ErrorScreen(
                    onTryAgainPressed: () {
                      context
                          .read<MoviesBloc>()
                          .add(const MoviesEvent.loadMovies(movies: []));
                    },
                  ),
                MoviesStateStatus.loaded => MoviesWidget(
                    popularMovies: state.popularMovies,
                    topRatedMovies: state.trendingMovies,
                    upcomingMovies: state.upcomingMovies,
                    searchResult: state.movieResults,
                  ),
              };
            },
          )),
    );
  }
}
