import 'package:flutter/material.dart';
import 'package:visable_challenge/app/components/movies_slider.dart';
import 'package:visable_challenge/app/components/section_header.dart';
import 'package:visable_challenge/app/components/section_list_view.dart';
import 'package:visable_challenge/app/components/section_list_view_card.dart';
import 'package:visable_challenge/app/components/slider_card.dart';
import 'package:visable_challenge/app/theme/visable_strings.dart';
import 'package:visable_challenge/features/movies/application/presentation/widgets/search_widget.dart';
import 'package:visable_challenge/features/movies/domain/entity/movie.dart';

class MoviesWidget extends StatelessWidget {
  final List<Movie> popularMovies;
  final List<Movie> topRatedMovies;
  final List<Movie> upcomingMovies;

  const MoviesWidget({
    super.key,
    required this.popularMovies,
    required this.topRatedMovies,
    required this.upcomingMovies,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MoviesSlider(
            itemBuilder: (context, itemIndex, _) {
              return SliderCard(
                movie: topRatedMovies[itemIndex],
                itemIndex: itemIndex,
              );
            },
          ),
          const SearchWidget(),
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
              return SectionListViewCard(movie: popularMovies[index]);
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
          ),
        ],
      ),
    );
  }
}
