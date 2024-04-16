import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:visable_challenge/app/error/failures.dart';
import 'package:visable_challenge/app/usecase/base_usecase.dart';
import 'package:visable_challenge/features/movies/domain/entity/movie.dart';
import 'package:visable_challenge/features/movies/domain/repository/movies_repository.dart';

@lazySingleton
class FilterMovieUseCase extends UseCase<List<Movie>, String> {
  FilterMovieUseCase(this.moviesRepository);

  final MoviesRepository moviesRepository;

  @override
  Future<Either<Failure, List<Movie>>> call(String params) async {
    final movieSearchResult =
        await moviesRepository.filterGenres(genres: params);
    return movieSearchResult.fold(
      (failure) => const Left(NoDataFoundFailure()),
      (success) => Right(success),
    );
  }
}
