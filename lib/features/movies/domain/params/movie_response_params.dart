import 'package:visable_challenge/features/movies/domain/entity/movie.dart';

class MovieResponseParams {
  const MovieResponseParams({
    required this.popularMovies,
    required this.topRateMovies,
    required this.upcoming,
  });
  final List<Movie> popularMovies;
  final List<Movie> topRateMovies;
  final List<Movie> upcoming;
}
