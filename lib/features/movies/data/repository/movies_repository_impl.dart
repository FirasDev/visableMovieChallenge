import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:visable_challenge/app/error/failures.dart';
import 'package:visable_challenge/features/movies/data/api/movies_api.dart';
import 'package:visable_challenge/features/movies/domain/entity/movie.dart';
import 'package:visable_challenge/features/movies/domain/repository/movies_repository.dart';

@LazySingleton(as: MoviesRepository)
class MoviesRepositoryImpl implements MoviesRepository {
  MoviesRepositoryImpl(this.moviesApi);

  final MoviesApi moviesApi;

  @override
  Future<Either<Failure, List<Movie>>> getMoviesListType(
      String listType) async {
    try {
      return Right(await moviesApi.getMoviesListType(listType));
    } on Exception catch (e) {
      return Left(NoDataFoundFailure(message: e.toString()));
    }
  }
}
