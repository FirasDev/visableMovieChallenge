import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:visable_challenge/app/error/failures.dart';
import 'package:visable_challenge/app/usecase/base_usecase.dart';
import 'package:visable_challenge/features/movies/domain/entity/movie.dart';
import 'package:visable_challenge/features/movies/domain/params/movie_list_type.dart';
import 'package:visable_challenge/features/movies/domain/params/movie_response_params.dart';
import 'package:visable_challenge/features/movies/domain/repository/movies_repository.dart';

@lazySingleton
class GetMoviesUseCase extends NoParamsUseCase<MovieResponseParams> {
  GetMoviesUseCase(this.moviesRepository);

  final MoviesRepository moviesRepository;

  @override
  Future<Either<Failure, MovieResponseParams>> call() async {
    final movieListResult = await Future.wait([
      for (final listType in MovieListType.values)
        moviesRepository.getMoviesListType(
          listType: listType.backendIdentifier,
        ),
    ]);
    if (movieListResult.every((movies) => movies.isRight())) {
      final popularMovies = (movieListResult[0] as Right).value as List<Movie>;
      final topRateMovies = (movieListResult[1] as Right).value as List<Movie>;
      final upcomingMovies = (movieListResult[2] as Right).value as List<Movie>;
      return Right(MovieResponseParams(
        popularMovies: popularMovies,
        topRateMovies: topRateMovies,
        upcoming: upcomingMovies,
      ));
    } else {
      return const Left(NoDataFoundFailure());
    }
  }
}
