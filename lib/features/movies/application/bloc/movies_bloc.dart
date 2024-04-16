import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';
import 'package:visable_challenge/features/movies/domain/entity/genre.dart';
import 'package:visable_challenge/features/movies/domain/entity/movie.dart';
import 'package:visable_challenge/features/movies/domain/repository/movies_repository.dart';
import 'package:visable_challenge/features/movies/domain/usecases/filter_movie_usecase.dart';
import 'package:visable_challenge/features/movies/domain/usecases/get_movies_usecase.dart';
import 'package:visable_challenge/features/movies/domain/usecases/search_movie_usecase.dart';

part 'movies_bloc.freezed.dart';
part 'movies_event.dart';
part 'movies_state.dart';

@injectable
class MoviesBloc extends Bloc<MoviesEvent, MoviesState> {
  MoviesBloc(
    this.moviesRepository,
    this.getMoviesUseCase,
    this.searchMovieUseCase,
    this.filterMovieUseCase,
  ) : super(
          const MoviesState(),
        ) {
    on<_LoadMovies>(_onLoadMovies);
    on<_MovieGenreFilter>(_onMovieGenreFilter);
    on<_SearchMovie>(_onSearchMovie,
        transformer: debounceRestartable(const Duration(
          milliseconds: 200,
        )));
  }

  final MoviesRepository moviesRepository;
  final GetMoviesUseCase getMoviesUseCase;
  final SearchMovieUseCase searchMovieUseCase;
  final FilterMovieUseCase filterMovieUseCase;

  FutureOr<void> _onLoadMovies(
    _LoadMovies event,
    Emitter<MoviesState> emit,
  ) async {
    final result = await getMoviesUseCase();
    result.fold(
        (failure) => state.copyWith(
              status: MoviesStateStatus.error,
            ),
        (success) => emit(state.copyWith(
              status: MoviesStateStatus.loaded,
              popularMovies: success.popularMovies,
              trendingMovies: success.topRateMovies,
              upcomingMovies: success.upcoming,
            )));
  }

  FutureOr<void> _onMovieGenreFilter(
    _MovieGenreFilter event,
    Emitter<MoviesState> emit,
  ) async {
    final genresQuery =
        event.genresIds.map((int number) => number.toString()).join(', ');
    final result = await filterMovieUseCase(genresQuery);
    final genresFilterList = Genre.convertGenreIdsToGenreList(event.genresIds);
    result.fold(
        (failure) => state.copyWith(
              status: MoviesStateStatus.error,
            ),
        (success) => emit(state.copyWith(
              movieResults: success,
              genresFilter: genresFilterList,
            )));
  }

  FutureOr<void> _onSearchMovie(
    _SearchMovie event,
    Emitter<MoviesState> emit,
  ) async {
    if (event.query.trim().isEmpty) {
      emit(
        state.copyWith(movieResults: []),
      );
    }

    final result = await searchMovieUseCase(event.query);
    result.fold(
        (failure) => state.copyWith(
              status: MoviesStateStatus.error,
            ),
        (success) => emit(state.copyWith(
              movieResults: success,
            )));
  }

  EventTransformer<MoviesEvent> debounceRestartable<MoviesEvent>(
    Duration duration,
  ) {
    return (events, mapper) => restartable<MoviesEvent>().call(
          events.debounceTime(duration),
          mapper,
        );
  }
}
