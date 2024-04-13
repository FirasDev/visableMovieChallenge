import 'package:flutter/material.dart';
import 'package:visable_challenge/app/theme/token/visable_colors.dart';
import 'package:visable_challenge/app/theme/token/visable_text_styles.dart';
import 'package:visable_challenge/app/theme/visable_typography.dart';

class VisableThemeData {
  VisableThemeData._();

  /// Returns a [ThemeData] object based on the [VisableThemeData] object.
  static ThemeData get lightThemeData {
    return ThemeData(
      primaryColor: VisableColors.primary,
      extensions: const [
        VisableTypographyData(
          h1LargeSemiBold: VisableTextStyles.visableFontHeadlinesH1LSemiBold,
          h2MediumSemiBold: VisableTextStyles.visableFontHeadlinesH2MSemiBold,
          h3SmallSemiBold: VisableTextStyles.visableFontHeadlinesH3SSemiBold,
          bodyMediumRegular: VisableTextStyles.visableFontBodyBodyMRegular,
          input: VisableTextStyles.visableFontInput,
          button: VisableTextStyles.visableFontButton,
        ),
      ],
    );
  }
}
