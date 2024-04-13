import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:visable_challenge/app/components/image_with_shimmer.dart';
import 'package:visable_challenge/app/components/visable_gap.dart';
import 'package:visable_challenge/app/helper/tmdb_config.dart';
import 'package:visable_challenge/app/theme/token/visable_colors.dart';
import 'package:visable_challenge/app/theme/visable_spacing.dart';
import 'package:visable_challenge/app/theme/visable_typography.dart';
import 'package:visable_challenge/app/utils/extension/context_extension.dart';
import 'package:visable_challenge/features/movies/application/presentation/pages/movie_details_page.dart';
import 'package:visable_challenge/features/movies/domain/entity/movie.dart';

class SectionListViewCard extends StatelessWidget {
  final Movie movie;

  const SectionListViewCard({
    required this.movie,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final path = movie.posterPath;
    return SizedBox(
      width: 120,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: () {
              context.pushNamed(
                MovieDetailsPage.routeName,
                extra: movie,
              );
            },
            child: ClipRRect(
              borderRadius: BorderRadius.circular(VisableSpacing.s8),
              child: ImageWithShimmer(
                imageUrl: '${TmdbConfig.tmdbImagePath}$path',
                width: double.infinity,
                height: 180,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: VisableSpacing.s4),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Icon(
                      Icons.star_rate_rounded,
                      color: VisableColors.gold,
                      size: VisableSpacing.s16,
                    ),
                    VisableGap.s4,
                    Text(
                      '${movie.voteAverage.toStringAsFixed(1)}/10',
                      style: context.typo.input.white,
                    ),
                  ],
                ),
                Text(
                  movie.title,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: context.typo.input.white,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
