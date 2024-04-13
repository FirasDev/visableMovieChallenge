import 'package:flutter/material.dart';
import 'package:visable_challenge/app/theme/token/visable_colors.dart';
import 'package:visable_challenge/app/theme/visable_spacing.dart';
import 'package:visable_challenge/app/theme/visable_strings.dart';
import 'package:visable_challenge/app/theme/visable_typography.dart';
import 'package:visable_challenge/app/utils/extension/context_extension.dart';

class SectionHeader extends StatelessWidget {
  final String title;
  final Function() onSeeAllTap;

  const SectionHeader({
    super.key,
    required this.title,
    required this.onSeeAllTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: VisableSpacing.s16,
        horizontal: VisableSpacing.s16,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: context.typo.h2MediumSemiBold.white),
          InkWell(
            onTap: onSeeAllTap,
            child: Row(
              children: [
                Text(
                  VisableStrings.seeAll,
                  style: context.typo.h2MediumSemiBold.white,
                ),
                const Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: VisableSpacing.s12,
                  color: VisableColors.primaryText,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
