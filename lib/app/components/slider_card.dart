import 'package:flutter/material.dart';
import 'package:visable_challenge/app/components/slider_card_image.dart';
import 'package:visable_challenge/app/theme/token/visable_colors.dart';
import 'package:visable_challenge/app/theme/visable_spacing.dart';
import 'package:visable_challenge/app/theme/visable_typography.dart';
import 'package:visable_challenge/app/utils/extension/context_extension.dart';
import 'package:visable_challenge/features/movies/domain/entity/movie.dart';

class SliderCard extends StatelessWidget {
  const SliderCard({
    super.key,
    required this.movie,
    required this.itemIndex,
  });

  final Movie movie;
  final int itemIndex;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        //TODO: add navigate to details view
      },
      child: SafeArea(
        child: Stack(
          children: [
            SliderCardImage(imageUrl: movie.backdropPath),
            Padding(
              padding: const EdgeInsets.only(
                right: VisableSpacing.s16,
                left: VisableSpacing.s16,
                bottom: VisableSpacing.s12,
              ),
              child: SizedBox(
                height: size.height * 0.55,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      movie.title,
                      maxLines: 2,
                      style: context.typo.h1LargeSemiBold.white,
                    ),
                    Text(
                      movie.releaseDate,
                      style: context.typo.bodyMediumRegular.white,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: VisableSpacing.s4),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: List.generate(
                          5,
                          (indexDot) {
                            return Container(
                              margin: const EdgeInsets.only(
                                  right: VisableSpacing.s12),
                              width: indexDot == itemIndex
                                  ? VisableSpacing.s32
                                  : VisableSpacing.s6,
                              height: VisableSpacing.s6,
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.circular(VisableSpacing.s6),
                                color: indexDot == itemIndex
                                    ? VisableColors.white
                                    : VisableColors.inactiveColor,
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
