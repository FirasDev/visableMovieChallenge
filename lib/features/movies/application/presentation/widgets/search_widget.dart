import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:visable_challenge/app/theme/token/visable_colors.dart';
import 'package:visable_challenge/app/theme/visable_spacing.dart';
import 'package:visable_challenge/app/theme/visable_strings.dart';
import 'package:visable_challenge/app/theme/visable_typography.dart';
import 'package:visable_challenge/app/utils/extension/context_extension.dart';
import 'package:visable_challenge/features/movies/application/bloc/movies_bloc.dart';

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
            context.read<MoviesBloc>().add(
                  MoviesEvent.searchMovie(title),
                );
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
                context.read<MoviesBloc>().add(
                      const MoviesEvent.searchMovie(''),
                    );
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
