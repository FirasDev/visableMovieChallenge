part of 'movies_bloc.dart';

@freezed
abstract class MoviesEvent with _$MoviesEvent {
  const factory MoviesEvent.loadMovies({
    required List<Movie> movies,
  }) = _LoadMovies;
  const factory MoviesEvent.movieClicked(int movieId) = _MovieClicked;
  const factory MoviesEvent.movieTypeFilter(String movieListType) =
      _MovieTypeFilter;
  const factory MoviesEvent.movieGenreFilter(int movieGenreId) =
      _MovieGenreFilter;
  const factory MoviesEvent.actorFilter(int castId) = _ActorFilter;
}
