import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import 'package:visable_challenge/app/theme/visable_spacing.dart';
import 'package:visable_challenge/app/theme/visable_strings.dart';
import 'package:visable_challenge/app/theme/visable_typography.dart';
import 'package:visable_challenge/app/utils/extension/context_extension.dart';
import 'package:visable_challenge/features/movies/domain/entity/movie.dart';

class DetailsOverview extends StatelessWidget {
  const DetailsOverview({
    super.key,
    required this.movie,
  });

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    if (movie.overview.isNotEmpty) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              right: VisableSpacing.s16,
              left: VisableSpacing.s16,
              top: VisableSpacing.s8,
              bottom: VisableSpacing.s4,
            ),
            child: Text(
              movie.title,
              style: context.typo.h2MediumSemiBold.white,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: VisableSpacing.s16,
            ),
            child: ReadMoreText(
              movie.overview,
              trimLines: 5,
              trimMode: TrimMode.Line,
              trimCollapsedText: VisableStrings.showMore,
              trimExpandedText: VisableStrings.showLess,
              style: context.typo.bodyMediumRegular.white,
              moreStyle: context.typo.h3SmallSemiBold.white,
              lessStyle: context.typo.h3SmallSemiBold.white,
            ),
          ),
        ],
      );
    } else {
      return const SizedBox();
    }
  }
}
