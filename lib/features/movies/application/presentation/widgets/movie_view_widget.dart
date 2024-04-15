import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:visable_challenge/app/components/image_with_shimmer.dart';
import 'package:visable_challenge/app/helper/tmdb_config.dart';
import 'package:visable_challenge/app/helper/visable_constants.dart';
import 'package:visable_challenge/app/theme/visable_spacing.dart';
import 'package:visable_challenge/app/theme/visable_typography.dart';
import 'package:visable_challenge/app/utils/extension/context_extension.dart';
import 'package:visable_challenge/features/movies/application/presentation/pages/movie_details_page.dart';
import 'package:visable_challenge/features/movies/domain/entity/movie.dart';

class MovieViewWidget extends StatelessWidget {
  const MovieViewWidget({
    super.key,
    required this.movie,
  });

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    final path = movie.posterPath;
    final url = path != null
        ? '${TmdbConfig.tmdbImagePath}$path'
        : VisableConstants.imageNotFoundUrl;
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            context.pushNamed(
              MovieDetailsPage.routeName,
              extra: movie,
            );
          },
          child: AspectRatio(
            aspectRatio: 2 / 3,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(
                VisableSpacing.s8,
              ),
              child: ImageWithShimmer(
                imageUrl: url,
                width: double.infinity,
                height: 150,
              ),
            ),
          ),
        ),
        Expanded(
          child: Text(
            movie.title,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: context.typo.bodyMediumRegular.white,
          ),
        ),
      ],
    );
  }
}
