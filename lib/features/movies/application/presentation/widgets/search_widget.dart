import 'package:flutter/material.dart';
import 'package:visable_challenge/app/theme/token/visable_colors.dart';
import 'package:visable_challenge/app/theme/visable_spacing.dart';
import 'package:visable_challenge/app/theme/visable_strings.dart';
import 'package:visable_challenge/app/theme/visable_typography.dart';
import 'package:visable_challenge/app/utils/extension/context_extension.dart';

class SearchWidget extends StatefulWidget {
  const SearchWidget({
    super.key,
  });

  @override
  State<SearchWidget> createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchWidget> {
  final _textController = TextEditingController();

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: VisableSpacing.s20),
      child: Form(
        child: TextFormField(
          controller: _textController,
          cursorColor: VisableColors.white,
          cursorWidth: 1,
          style: context.typo.h3SmallSemiBold.white,
          onChanged: (title) {
            //TODO: add bloc search event
          },
          decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: VisableColors.white,
              ),
              borderRadius: BorderRadius.circular(VisableSpacing.s8),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: VisableColors.white,
              ),
              borderRadius: BorderRadius.circular(VisableSpacing.s8),
            ),
            prefixIcon: const Icon(
              Icons.search_rounded,
              color: VisableColors.white,
            ),
            suffixIcon: GestureDetector(
              onTap: () {
                _textController.text = '';
                //TODO: add bloc search event
              },
              child: const Icon(
                Icons.clear_rounded,
                color: VisableColors.white,
              ),
            ),
            hintText: VisableStrings.searchHint,
            hintStyle: context.typo.h3SmallSemiBold.white,
          ),
        ),
      ),
    );
  }
}
