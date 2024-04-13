import 'package:flutter/material.dart';
import 'package:visable_challenge/app/components/error_text.dart';
import 'package:visable_challenge/app/theme/token/visable_colors.dart';
import 'package:visable_challenge/app/theme/visable_spacing.dart';
import 'package:visable_challenge/app/theme/visable_strings.dart';

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({
    super.key,
    required this.onTryAgainPressed,
  });

  final Function() onTryAgainPressed;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const ErrorText(),
          const SizedBox(height: VisableSpacing.s16),
          ElevatedButton(
            onPressed: onTryAgainPressed,
            style: ElevatedButton.styleFrom(
              backgroundColor: VisableColors.primary,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(VisableSpacing.s32),
              ),
            ),
            child: Text(
              VisableStrings.tryAgainLater,
              style: textTheme.bodyMedium,
            ),
          ),
        ],
      ),
    );
  }
}
