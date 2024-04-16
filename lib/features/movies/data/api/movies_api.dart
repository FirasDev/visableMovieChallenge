import 'package:visable_challenge/features/movies/domain/entity/movie.dart';

abstract interface class MoviesApi {
  Future<List<Movie>> getMoviesListType({
    required String listType,
  });
  Future<List<Movie>> searchMovie({
    required String query,
  });
  Future<List<Movie>> filterGenre({
    required String genres,
  });
}
