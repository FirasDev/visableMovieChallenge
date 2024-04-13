import 'package:flutter/material.dart';
import 'package:visable_challenge/app/theme/visable_strings.dart';
import 'package:visable_challenge/app/utils/extension/context_extension.dart';

class ErrorText extends StatelessWidget {
  const ErrorText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          VisableStrings.errorMessage,
          style: context.typo.bodyMediumRegular,
        ),
        Text(
          VisableStrings.tryAgainLater,
          style: context.typo.bodyMediumRegular,
        ),
      ],
    );
  }
}
