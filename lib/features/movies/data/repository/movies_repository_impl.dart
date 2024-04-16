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
  Future<Either<Failure, List<Movie>>> getMoviesListType({
    required String listType,
  }) async {
    try {
      final result = await moviesApi.getMoviesListType(
        listType: listType,
      );
      return Right(result);
    } on Exception catch (_) {
      return const Left(NoDataFoundFailure());
    }
  }

  @override
  Future<Either<Failure, List<Movie>>> searchMovie({
    required String query,
  }) async {
    try {
      final result = await moviesApi.searchMovie(
        query: query,
      );
      return Right(result);
    } on Exception catch (_) {
      return const Left(NoDataFoundFailure());
    }
  }

  @override
  Future<Either<Failure, List<Movie>>> filterGenres({
    required String genres,
  }) async {
    try {
      final result = await moviesApi.filterGenre(
        genres: genres,
      );
      return Right(result);
    } on Exception catch (_) {
      return const Left(NoDataFoundFailure());
    }
  }
}
