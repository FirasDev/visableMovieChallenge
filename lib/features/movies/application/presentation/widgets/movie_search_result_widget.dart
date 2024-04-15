import 'package:flutter/material.dart';
import 'package:visable_challenge/app/theme/visable_spacing.dart';
import 'package:visable_challenge/features/movies/application/presentation/widgets/movie_view_widget.dart';
import 'package:visable_challenge/features/movies/domain/entity/movie.dart';

class MovieSearchResultWidget extends StatelessWidget {
  const MovieSearchResultWidget({
    super.key,
    required this.searchResult,
  });

  final List<Movie> searchResult;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      padding: const EdgeInsets.all(
        VisableSpacing.s12,
      ),
      itemCount: searchResult.length,
      physics: const BouncingScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 12,
        childAspectRatio: 0.55,
      ),
      itemBuilder: (context, index) {
        return MovieViewWidget(
          movie: searchResult[index],
        );
      },
    );
  }
}
