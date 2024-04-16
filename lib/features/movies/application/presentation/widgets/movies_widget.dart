import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:visable_challenge/app/components/movies_slider.dart';
import 'package:visable_challenge/app/components/section_header.dart';
import 'package:visable_challenge/app/theme/token/visable_colors.dart';
import 'package:visable_challenge/app/theme/visable_spacing.dart';
import 'package:visable_challenge/app/theme/visable_typography.dart';
import 'package:visable_challenge/app/utils/extension/context_extension.dart';
import 'package:visable_challenge/features/movies/application/presentation/widgets/movie_search_result_widget.dart';
import 'package:visable_challenge/features/movies/application/presentation/widgets/movies_filter_button.dart';
import 'package:visable_challenge/features/movies/application/presentation/widgets/section_list_view.dart';
import 'package:visable_challenge/features/movies/application/presentation/widgets/section_list_view_card.dart';
import 'package:visable_challenge/features/movies/application/presentation/widgets/slider_card.dart';
import 'package:visable_challenge/app/theme/visable_strings.dart';
import 'package:visable_challenge/features/movies/application/presentation/widgets/search_widget.dart';
import 'package:visable_challenge/features/movies/domain/entity/movie.dart';

class MoviesWidget extends StatelessWidget {
  final List<Movie> popularMovies;
  final List<Movie> topRatedMovies;
  final List<Movie> upcomingMovies;
  final List<Movie> searchResult;

  const MoviesWidget({
    super.key,
    required this.popularMovies,
    required this.topRatedMovies,
    required this.upcomingMovies,
    required this.searchResult,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          MoviesSlider(
            itemBuilder: (context, itemIndex, _) {
              return SliderCard(
                movie: topRatedMovies[itemIndex],
                itemIndex: itemIndex,
              );
            },
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                child: SearchWidget(),
              ),
              MoviesFilterButton(),
            ],
          ),
          if (searchResult.isNotEmpty) ...[
            MovieSearchResultWidget(searchResult: searchResult)
          ] else ...[
            SectionHeader(
              title: VisableStrings.popularMovies,
              onSeeAllTap: () {
                //TODO: add see all popular movies
              },
            ),
            SectionListView(
              height: 250,
              itemCount: popularMovies.length,
              itemBuilder: (context, index) {
                return SectionListViewCard(
                  movie: popularMovies[index],
                );
              },
            ),
            SectionHeader(
              title: VisableStrings.topRatedMovies,
              onSeeAllTap: () {
                //TODO: add see all top rated movies
              },
            ),
            SectionListView(
              height: 250,
              itemCount: topRatedMovies.length,
              itemBuilder: (context, index) {
                return SectionListViewCard(movie: topRatedMovies[index]);
              },
            )
          ],
        ],
      ),
    );
  }
}
