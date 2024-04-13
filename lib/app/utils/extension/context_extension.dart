import 'package:flutter/material.dart';
import 'package:visable_challenge/app/theme/visable_typography.dart';

extension BuildContextX on BuildContext {
  VisableTypographyData get typo =>
      Theme.of(this).extension<VisableTypographyData>()!;
}
