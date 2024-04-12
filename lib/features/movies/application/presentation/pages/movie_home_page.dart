import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:visable_challenge/app/dependancy/injection.dart';
import 'package:visable_challenge/app/movie_theme_data.dart';
import 'package:visable_challenge/app/router/router_key.dart';
import 'package:visable_challenge/features/movies/application/bloc/movies_bloc.dart';

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
      backgroundColor: MovieThemeData.lightThemeData.primaryColor,
      body: BlocProvider(
        create: (context) =>
            getIt<MoviesBloc>()..add(const MoviesEvent.loadMovies(movies: [])),
        child: const MoviesList(),
      ),
    );
  }
}

class MoviesList extends StatelessWidget {
  const MoviesList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MoviesBloc, MoviesState>(
      builder: (context, state) {
        return switch (state.status) {
          MoviesStateStatus.loading =>
            const CircularProgressIndicator.adaptive(),
          MoviesStateStatus.error => const Center(child: Text('Error')),
          MoviesStateStatus.loaded =>
            Center(child: Text(state.popularMovies.length.toString())),
        };
      },
    );
  }
}
