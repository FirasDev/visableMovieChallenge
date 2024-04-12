import 'package:visable_challenge/features/movies/domain/entity/movie.dart';

abstract interface class MoviesApi {
  Future<List<Movie>> getMoviesListType(String listType);
}
