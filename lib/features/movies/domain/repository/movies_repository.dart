import 'package:fpdart/fpdart.dart';
import 'package:visable_challenge/app/error/failures.dart';
import 'package:visable_challenge/features/movies/domain/entity/movie.dart';

abstract class MoviesRepository {
  Future<Either<Failure, List<Movie>>> getMoviesListType(
    String listType,
  );
}
