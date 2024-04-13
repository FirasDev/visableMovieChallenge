import 'package:flutter/material.dart';
import 'package:visable_challenge/app/theme/visable_strings.dart';

class ErrorText extends StatelessWidget {
  const ErrorText({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          VisableStrings.errorMessage,
          style: textTheme.bodyLarge,
        ),
        Text(
          VisableStrings.tryAgainLater,
          style: textTheme.bodyLarge,
        ),
      ],
    );
  }
}
