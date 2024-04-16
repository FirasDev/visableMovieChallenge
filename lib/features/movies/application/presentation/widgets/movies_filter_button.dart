import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:visable_challenge/app/theme/token/visable_colors.dart';
import 'package:visable_challenge/app/theme/visable_spacing.dart';
import 'package:visable_challenge/app/theme/visable_strings.dart';
import 'package:visable_challenge/app/theme/visable_typography.dart';
import 'package:visable_challenge/app/utils/extension/context_extension.dart';
import 'package:visable_challenge/features/movies/application/presentation/pages/movie_genre_filter_page.dart';

class MoviesFilterButton extends StatelessWidget {
  const MoviesFilterButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: VisableSpacing.s8,
      ),
      child: Theme(
        data: ThemeData(canvasColor: VisableColors.transparent),
        child: InkWell(
          onTap: () {
            context.pushNamed(
              MovieGenreFilterPage.routeName,
            );
          },
          child: Chip(
            label: Text(
              VisableStrings.filter,
              style: context.typo.bodyMediumRegular.white,
            ),
            side: const BorderSide(
              color: VisableColors.white,
              width: 1.0,
            ),
            backgroundColor: Colors.transparent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                VisableSpacing.s12,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
