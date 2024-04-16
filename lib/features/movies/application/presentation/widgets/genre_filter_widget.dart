import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:visable_challenge/app/theme/token/visable_colors.dart';
import 'package:visable_challenge/app/theme/visable_size.dart';
import 'package:visable_challenge/app/theme/visable_spacing.dart';
import 'package:visable_challenge/app/theme/visable_typography.dart';
import 'package:visable_challenge/app/utils/extension/context_extension.dart';
import 'package:visable_challenge/features/movies/application/bloc/movies_bloc.dart';
import 'package:visable_challenge/features/movies/domain/entity/genre.dart';

class GenreFilterWidget extends StatelessWidget {
  const GenreFilterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final genres = Genre.genres;
    return BlocBuilder<MoviesBloc, MoviesState>(
      builder: (context, state) {
        final filterList = state.genresFilter;
        return Center(
          child: Padding(
            padding: const EdgeInsets.all(
              VisableSpacing.s20,
            ),
            child: Wrap(
              spacing: VisableSize.s,
              runSpacing: VisableSize.s,
              children: genres.map((genre) {
                return Theme(
                  data: ThemeData(canvasColor: VisableColors.transparent),
                  child: InkWell(
                    onTap: () {
                      _genreClicked(
                        context,
                        genre,
                        filterList,
                      );
                    },
                    child: Chip(
                      label: Text(
                        genre.name,
                        style: context.typo.bodyMediumRegular.white,
                      ),
                      side: BorderSide(
                        color: filterList.contains(genre)
                            ? VisableColors.error
                            : VisableColors.white,
                        width: 1.0,
                      ),
                      backgroundColor: Colors.transparent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
        );
      },
    );
  }

  void _genreClicked(
    BuildContext context,
    Genre genre,
    List<Genre> genresList,
  ) {
    final filterList = List<Genre>.from(genresList);
    if (filterList.contains(genre)) {
      filterList.remove(genre);
    } else {
      filterList.add(genre);
    }
    final genreIds = filterList.map((e) => e.id).toList();
    context.read<MoviesBloc>().add(MoviesEvent.movieGenreFilter(
          genresIds: genreIds,
        ));
  }
}
