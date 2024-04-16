import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mocktail/mocktail.dart';
import 'package:visable_challenge/features/movies/application/bloc/movies_bloc.dart';
import 'package:visable_challenge/features/movies/data/api/movies_api.dart';
import 'package:visable_challenge/features/movies/data/repository/movies_repository_impl.dart';
import 'package:visable_challenge/features/movies/domain/entity/movie.dart';
import 'package:visable_challenge/features/movies/domain/params/movie_response_params.dart';
import 'package:visable_challenge/features/movies/domain/repository/movies_repository.dart';
import 'package:visable_challenge/features/movies/domain/usecases/filter_movie_usecase.dart';
import 'package:visable_challenge/features/movies/domain/usecases/get_movies_usecase.dart';
import 'package:visable_challenge/features/movies/domain/usecases/search_movie_usecase.dart';

class MockGetMoviesUseCase extends Mock implements GetMoviesUseCase {}

class MockSearchMovieUseCase extends Mock implements SearchMovieUseCase {}

class MockFilterMovieUseCase extends Mock implements FilterMovieUseCase {}

class MockMoviesApi extends Mock implements MoviesApi {}

void main() {
  late MockMoviesApi moviesApiMock;
  late MoviesRepository moviesRepository;
  late MockGetMoviesUseCase mockGetMoviesUseCase;
  late MockSearchMovieUseCase mockSearchMovieUseCase;
  late MockFilterMovieUseCase mockFilterMovieUseCase;
  late MoviesBloc moviesBloc;

  setUp(() {
    moviesApiMock = MockMoviesApi();
    moviesRepository = MoviesRepositoryImpl(moviesApiMock);
    mockGetMoviesUseCase = MockGetMoviesUseCase();
    mockSearchMovieUseCase = MockSearchMovieUseCase();
    mockFilterMovieUseCase = MockFilterMovieUseCase();
    moviesBloc = MoviesBloc(
      moviesRepository,
      mockGetMoviesUseCase,
      mockSearchMovieUseCase,
      mockFilterMovieUseCase,
    );
  });

  final movies = <Movie>[
    const Movie(
      id: 14,
      title: 'Aline in wonderland',
      overview: 'for children',
      popularity: 20.0,
    ),
  ];

  test('initial state should be loading', () {
    expect(moviesBloc.state.status, MoviesStateStatus.loading);
  });

  blocTest<MoviesBloc, MoviesState>(
    'should emit [Loaded] with empty lists when data is loaded.',
    build: () {
      when(() => mockGetMoviesUseCase.call())
          .thenAnswer((_) async => Right(MovieResponseParams(
                popularMovies: movies,
                topRateMovies: movies,
                upcoming: movies,
              )));
      return moviesBloc;
    },
    act: (bloc) => bloc.add(const MoviesEvent.loadMovies(movies: [])),
    expect: () => [
      MoviesState(
        status: MoviesStateStatus.loaded,
        genresFilter: [],
        movieResults: [],
        popularMovies: movies,
        trendingMovies: movies,
        upcomingMovies: movies,
      ),
    ],
  );

  blocTest<MoviesBloc, MoviesState>(
    'should emit [Loaded,Loading,Loaded] when data is searched.',
    build: () {
      when(() => mockSearchMovieUseCase.call(any(that: isNotNull)))
          .thenAnswer((_) async => Right(movies));
      return moviesBloc;
    },
    seed: () => const MoviesState(
      status: MoviesStateStatus.loaded,
    ),
    act: (bloc) => bloc.add(const MoviesEvent.searchMovie('query')),
    wait: const Duration(milliseconds: 200),
    expect: () =>
        [MoviesState(status: MoviesStateStatus.loaded, movieResults: movies)],
  );
}
