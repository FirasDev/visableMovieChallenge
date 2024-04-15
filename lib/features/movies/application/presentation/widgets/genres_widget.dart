import 'package:flutter/material.dart';
import 'package:visable_challenge/app/theme/token/visable_colors.dart';
import 'package:visable_challenge/app/theme/visable_size.dart';
import 'package:visable_challenge/app/theme/visable_typography.dart';
import 'package:visable_challenge/app/utils/extension/context_extension.dart';
import 'package:visable_challenge/features/movies/domain/entity/genre.dart';

class GenresWidget extends StatelessWidget {
  const GenresWidget({
    required this.genres,
    super.key,
  });

  final List<Genre> genres;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: VisableSize.s,
      runSpacing: VisableSize.s,
      children: genres.map((genre) {
        return Theme(
          data: ThemeData(canvasColor: VisableColors.transparent),
          child: Chip(
            label: Text(
              genre.name,
              style: context.typo.bodyMediumRegular.white,
            ),
            side: const BorderSide(
              color: VisableColors.white,
              width: 1.0,
            ),
            backgroundColor: Colors.transparent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        );
      }).toList(),
    );
  }
}
