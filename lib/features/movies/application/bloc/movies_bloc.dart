import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:visable_challenge/features/movies/domain/entity/movie.dart';
import 'package:visable_challenge/features/movies/domain/repository/movies_repository.dart';
import 'package:visable_challenge/features/movies/domain/usecases/get_movies_usecase.dart';

part 'movies_bloc.freezed.dart';
part 'movies_event.dart';
part 'movies_state.dart';

@injectable
class MoviesBloc extends Bloc<MoviesEvent, MoviesState> {
  MoviesBloc(
    this.getMoviesUseCase,
    this.moviesRepository,
  ) : super(
          const MoviesState(),
        ) {
    on<_LoadMovies>(_onLoadMovies);
    on<_MovieClicked>(_onMovieClicked);
    on<_MovieTypeFilter>(_onMovieTypeFilter);
    on<_MovieGenreFilter>(_onMovieGenreFilter);
    on<_ActorFilter>(_onActorFilter);
  }

  final GetMoviesUseCase getMoviesUseCase;
  final MoviesRepository moviesRepository;

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

  FutureOr<void> _onMovieClicked(
    _MovieClicked event,
    Emitter<MoviesState> emit,
  ) {}

  FutureOr<void> _onMovieTypeFilter(
    _MovieTypeFilter event,
    Emitter<MoviesState> emit,
  ) {}

  FutureOr<void> _onMovieGenreFilter(
    _MovieGenreFilter event,
    Emitter<MoviesState> emit,
  ) {}

  FutureOr<void> _onActorFilter(
    _ActorFilter event,
    Emitter<MoviesState> emit,
  ) {}
}
