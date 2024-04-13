import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:visable_challenge/features/movies/application/presentation/widgets/details_view.dart';
import 'package:visable_challenge/app/router/router_key.dart';
import 'package:visable_challenge/app/theme/visable_spacing.dart';
import 'package:visable_challenge/app/visable_theme_data.dart';
import 'package:visable_challenge/features/movies/application/presentation/widgets/details_overview.dart';
import 'package:visable_challenge/features/movies/domain/entity/movie.dart';

class MovieDetailsPage extends StatelessWidget {
  const MovieDetailsPage({
    required this.movie,
    super.key,
  });

  static String get routeName => 'movie_details_page';

  static String get routeLocation => '/$routeName';

  static GoRoute get route => GoRoute(
        name: routeName,
        path: routeLocation,
        parentNavigatorKey: rootNavigatorKey,
        builder: (context, state) {
          final movie = state.extra as Movie;
          return MovieDetailsPage(
            movie: movie,
          );
        },
      );

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: VisableThemeData.lightThemeData.primaryColor,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DetailsView(
              movie: movie,
            ),
            DetailsOverview(movie: movie),
            const SizedBox(height: VisableSpacing.s8),
          ],
        ),
      ),
    );
  }
}
