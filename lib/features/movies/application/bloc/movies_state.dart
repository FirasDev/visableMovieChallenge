part of 'movies_bloc.dart';

enum MoviesStateStatus {
  loading,
  loaded,
  error,
}

@freezed
abstract class MoviesState with _$MoviesState {
  const factory MoviesState({
    @Default([]) List<Movie> popularMovies,
    @Default([]) List<Movie> trendingMovies,
    @Default([]) List<Movie> upcomingMovies,
    @Default(MoviesStateStatus.loading) MoviesStateStatus status,
  }) = _MoviesState;
}
