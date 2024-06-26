part of 'movies_bloc.dart';

@freezed
abstract class MoviesEvent with _$MoviesEvent {
  const factory MoviesEvent.loadMovies({
    required List<Movie> movies,
  }) = _LoadMovies;
  const factory MoviesEvent.movieGenreFilter({
    required List<int> genresIds,
  }) = _MovieGenreFilter;
  const factory MoviesEvent.searchMovie(String query) = _SearchMovie;
}
