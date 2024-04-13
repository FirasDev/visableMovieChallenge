import 'package:flutter/material.dart';
import 'package:visable_challenge/app/theme/token/visable_colors.dart';

// Extension methods for the [TextStyle] class.
extension VisableTypographyX on TextStyle {
  TextStyle get deepPurple => copyWith(color: VisableColors.primary);
  TextStyle get white => copyWith(color: VisableColors.white);
  TextStyle get error => copyWith(color: VisableColors.error);
  TextStyle get black => copyWith(color: VisableColors.black);
}

class VisableTypographyData extends ThemeExtension<VisableTypographyData> {
  final TextStyle h1LargeSemiBold;
  final TextStyle h2MediumSemiBold;
  final TextStyle h3SmallSemiBold;
  final TextStyle bodyMediumRegular;
  final TextStyle input;
  final TextStyle button;

  const VisableTypographyData({
    required this.h1LargeSemiBold,
    required this.h2MediumSemiBold,
    required this.h3SmallSemiBold,
    required this.bodyMediumRegular,
    required this.input,
    required this.button,
  });

  @override
  ThemeExtension<VisableTypographyData> copyWith({
    TextStyle? h1LargeSemiBold,
    TextStyle? h2MediumSemiBold,
    TextStyle? h3SmallSemiBold,
    TextStyle? bodyMediumRegular,
    TextStyle? input,
    TextStyle? button,
  }) {
    return VisableTypographyData(
      h1LargeSemiBold: h1LargeSemiBold ?? this.h1LargeSemiBold,
      h2MediumSemiBold: h2MediumSemiBold ?? this.h2MediumSemiBold,
      h3SmallSemiBold: h3SmallSemiBold ?? this.h3SmallSemiBold,
      bodyMediumRegular: bodyMediumRegular ?? this.bodyMediumRegular,
      input: input ?? this.input,
      button: button ?? this.button,
    );
  }

  @override
  ThemeExtension<VisableTypographyData> lerp(
    covariant ThemeExtension<VisableTypographyData>? other,
    double t,
  ) {
    if (other is! VisableTypographyData) {
      return this;
    }
    return VisableTypographyData(
      h1LargeSemiBold:
          TextStyle.lerp(h1LargeSemiBold, other.h1LargeSemiBold, t)!,
      h2MediumSemiBold:
          TextStyle.lerp(h2MediumSemiBold, other.h2MediumSemiBold, t)!,
      h3SmallSemiBold:
          TextStyle.lerp(h3SmallSemiBold, other.h3SmallSemiBold, t)!,
      bodyMediumRegular:
          TextStyle.lerp(bodyMediumRegular, other.bodyMediumRegular, t)!,
      input: TextStyle.lerp(input, other.input, t)!,
      button: TextStyle.lerp(button, other.button, t)!,
    );
  }
}
