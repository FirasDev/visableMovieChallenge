import 'package:flutter/material.dart';
import 'package:visable_challenge/app/theme/token/visable_colors.dart';
import 'package:visable_challenge/app/theme/visable_spacing.dart';

class BackButtonWidget extends StatelessWidget {
  const BackButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: VisableSpacing.s12,
        left: VisableSpacing.s16,
        right: VisableSpacing.s16,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: const Stack(
              children: [
                Icon(
                  Icons.arrow_back_ios_new_rounded,
                  color: Colors.black,
                  size: VisableSpacing.s32 +
                      6, // adding an outline for white backgrounds
                ),
                Icon(
                  Icons.arrow_back_ios_new_rounded,
                  color: VisableColors.white,
                  size: VisableSpacing.s32,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
