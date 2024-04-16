import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:visable_challenge/app/dependancy/injection.dart';
import 'package:visable_challenge/app/router/router_key.dart';
import 'package:visable_challenge/app/visable_theme_data.dart';
import 'package:visable_challenge/features/movies/application/bloc/movies_bloc.dart';
import 'package:visable_challenge/features/movies/application/presentation/widgets/button_widget.dart';
import 'package:visable_challenge/features/movies/application/presentation/widgets/genre_filter_widget.dart';
import 'package:visable_challenge/features/movies/application/presentation/widgets/movie_search_result_widget.dart';

class MovieGenreFilterPage extends StatelessWidget {
  const MovieGenreFilterPage({super.key});

  static String get routeName => 'movie_genre_filter_page';

  static String get routeLocation => '/$routeName';

  static GoRoute get route => GoRoute(
        name: routeName,
        path: routeLocation,
        parentNavigatorKey: rootNavigatorKey,
        builder: (context, state) => const MovieGenreFilterPage(),
      );

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<MoviesBloc>(),
      child: Scaffold(
        backgroundColor: VisableThemeData.lightThemeData.primaryColor,
        body: SafeArea(
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const BackButtonWidget(),
                const GenreFilterWidget(),
                BlocBuilder<MoviesBloc, MoviesState>(
                  buildWhen: (previous, current) =>
                      previous.genresFilter != current.genresFilter,
                  builder: (context, state) {
                    return MovieSearchResultWidget(
                      searchResult: state.movieResults,
                    );
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
