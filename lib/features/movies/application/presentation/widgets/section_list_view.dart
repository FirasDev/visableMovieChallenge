import 'package:flutter/material.dart';
import 'package:visable_challenge/app/theme/visable_size.dart';
import 'package:visable_challenge/app/theme/visable_spacing.dart';

class SectionListView extends StatelessWidget {
  final int itemCount;
  final double height;
  final Widget Function(BuildContext context, int index) itemBuilder;

  const SectionListView({
    required this.height,
    required this.itemCount,
    required this.itemBuilder,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: VisableSize.l),
        itemCount: itemCount,
        scrollDirection: Axis.horizontal,
        itemBuilder: itemBuilder,
        separatorBuilder: (context, index) =>
            const SizedBox(width: VisableSpacing.s12),
      ),
    );
  }
}
