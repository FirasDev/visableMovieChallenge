import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:visable_challenge/app/error/failures.dart';
import 'package:visable_challenge/app/usecase/base_usecase.dart';
import 'package:visable_challenge/features/movies/domain/entity/movie.dart';
import 'package:visable_challenge/features/movies/domain/repository/movies_repository.dart';

@lazySingleton
class SearchMovieUseCase extends UseCase<List<Movie>, String> {
  SearchMovieUseCase(this.moviesRepository);

  final MoviesRepository moviesRepository;

  @override
  Future<Either<Failure, List<Movie>>> call(String params) async {
    final movieSearchResult = await moviesRepository.searchMovie(query: params);
    return movieSearchResult.fold(
      (failure) => const Left(NoDataFoundFailure()),
      (success) => Right(success),
    );
  }
}
