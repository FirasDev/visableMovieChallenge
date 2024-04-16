import 'package:fpdart/fpdart.dart';
import 'package:visable_challenge/app/error/failures.dart';
import 'package:visable_challenge/features/movies/domain/entity/movie.dart';

abstract class MoviesRepository {
  Future<Either<Failure, List<Movie>>> getMoviesListType({
    required String listType,
  });
  Future<Either<Failure, List<Movie>>> searchMovie({
    required String query,
  });
  Future<Either<Failure, List<Movie>>> filterGenres({
    required String genres,
  });
}
