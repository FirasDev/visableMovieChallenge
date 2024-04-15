import 'package:flutter/material.dart';
import 'package:visable_challenge/app/components/slider_card_image.dart';
import 'package:visable_challenge/app/theme/token/visable_colors.dart';
import 'package:visable_challenge/app/theme/visable_spacing.dart';
import 'package:visable_challenge/app/theme/visable_typography.dart';
import 'package:visable_challenge/app/utils/extension/context_extension.dart';
import 'package:visable_challenge/features/movies/application/presentation/widgets/genres_widget.dart';
import 'package:visable_challenge/features/movies/domain/entity/movie.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({
    required this.movie,
    super.key,
  });

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          SliderCardImage(imageUrl: movie.posterPath),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: VisableSpacing.s16,
            ),
            child: SizedBox(
              height: context.screenHeight * 0.6,
              child: Padding(
                padding: const EdgeInsets.only(
                  bottom: VisableSpacing.s8,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            movie.title,
                            maxLines: 2,
                            style: context.typo.h2MediumSemiBold.white,
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.star_rate_rounded,
                                color: VisableColors.gold,
                                size: VisableSpacing.s16,
                              ),
                              Text(
                                '${movie.voteAverage?.toStringAsFixed(1)}/10',
                                style: context.typo.bodyMediumRegular.white,
                              ),
                            ],
                          ),
                          if (movie.genres != null)
                            GenresWidget(
                              genres: movie.genres!,
                            ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: VisableSpacing.s12,
              left: VisableSpacing.s16,
              right: VisableSpacing.s16,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: const Stack(
                    children: [
                      Icon(
                        Icons.arrow_back_ios_new_rounded,
                        color: Colors.black,
                        size: VisableSpacing.s32 +
                            6, // adding an outline for white backgrounds
                      ),
                      Icon(
                        Icons.arrow_back_ios_new_rounded,
                        color: VisableColors.white,
                        size: VisableSpacing.s32,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
