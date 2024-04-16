// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movies_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MoviesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Movie> movies) loadMovies,
    required TResult Function(List<int> genresIds) movieGenreFilter,
    required TResult Function(String query) searchMovie,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Movie> movies)? loadMovies,
    TResult? Function(List<int> genresIds)? movieGenreFilter,
    TResult? Function(String query)? searchMovie,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Movie> movies)? loadMovies,
    TResult Function(List<int> genresIds)? movieGenreFilter,
    TResult Function(String query)? searchMovie,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadMovies value) loadMovies,
    required TResult Function(_MovieGenreFilter value) movieGenreFilter,
    required TResult Function(_SearchMovie value) searchMovie,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadMovies value)? loadMovies,
    TResult? Function(_MovieGenreFilter value)? movieGenreFilter,
    TResult? Function(_SearchMovie value)? searchMovie,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadMovies value)? loadMovies,
    TResult Function(_MovieGenreFilter value)? movieGenreFilter,
    TResult Function(_SearchMovie value)? searchMovie,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MoviesEventCopyWith<$Res> {
  factory $MoviesEventCopyWith(
          MoviesEvent value, $Res Function(MoviesEvent) then) =
      _$MoviesEventCopyWithImpl<$Res, MoviesEvent>;
}

/// @nodoc
class _$MoviesEventCopyWithImpl<$Res, $Val extends MoviesEvent>
    implements $MoviesEventCopyWith<$Res> {
  _$MoviesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadMoviesImplCopyWith<$Res> {
  factory _$$LoadMoviesImplCopyWith(
          _$LoadMoviesImpl value, $Res Function(_$LoadMoviesImpl) then) =
      __$$LoadMoviesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Movie> movies});
}

/// @nodoc
class __$$LoadMoviesImplCopyWithImpl<$Res>
    extends _$MoviesEventCopyWithImpl<$Res, _$LoadMoviesImpl>
    implements _$$LoadMoviesImplCopyWith<$Res> {
  __$$LoadMoviesImplCopyWithImpl(
      _$LoadMoviesImpl _value, $Res Function(_$LoadMoviesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movies = null,
  }) {
    return _then(_$LoadMoviesImpl(
      movies: null == movies
          ? _value._movies
          : movies // ignore: cast_nullable_to_non_nullable
              as List<Movie>,
    ));
  }
}

/// @nodoc

class _$LoadMoviesImpl implements _LoadMovies {
  const _$LoadMoviesImpl({required final List<Movie> movies})
      : _movies = movies;

  final List<Movie> _movies;
  @override
  List<Movie> get movies {
    if (_movies is EqualUnmodifiableListView) return _movies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_movies);
  }

  @override
  String toString() {
    return 'MoviesEvent.loadMovies(movies: $movies)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadMoviesImpl &&
            const DeepCollectionEquality().equals(other._movies, _movies));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_movies));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadMoviesImplCopyWith<_$LoadMoviesImpl> get copyWith =>
      __$$LoadMoviesImplCopyWithImpl<_$LoadMoviesImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Movie> movies) loadMovies,
    required TResult Function(List<int> genresIds) movieGenreFilter,
    required TResult Function(String query) searchMovie,
  }) {
    return loadMovies(movies);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Movie> movies)? loadMovies,
    TResult? Function(List<int> genresIds)? movieGenreFilter,
    TResult? Function(String query)? searchMovie,
  }) {
    return loadMovies?.call(movies);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Movie> movies)? loadMovies,
    TResult Function(List<int> genresIds)? movieGenreFilter,
    TResult Function(String query)? searchMovie,
    required TResult orElse(),
  }) {
    if (loadMovies != null) {
      return loadMovies(movies);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadMovies value) loadMovies,
    required TResult Function(_MovieGenreFilter value) movieGenreFilter,
    required TResult Function(_SearchMovie value) searchMovie,
  }) {
    return loadMovies(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadMovies value)? loadMovies,
    TResult? Function(_MovieGenreFilter value)? movieGenreFilter,
    TResult? Function(_SearchMovie value)? searchMovie,
  }) {
    return loadMovies?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadMovies value)? loadMovies,
    TResult Function(_MovieGenreFilter value)? movieGenreFilter,
    TResult Function(_SearchMovie value)? searchMovie,
    required TResult orElse(),
  }) {
    if (loadMovies != null) {
      return loadMovies(this);
    }
    return orElse();
  }
}

abstract class _LoadMovies implements MoviesEvent {
  const factory _LoadMovies({required final List<Movie> movies}) =
      _$LoadMoviesImpl;

  List<Movie> get movies;
  @JsonKey(ignore: true)
  _$$LoadMoviesImplCopyWith<_$LoadMoviesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MovieGenreFilterImplCopyWith<$Res> {
  factory _$$MovieGenreFilterImplCopyWith(_$MovieGenreFilterImpl value,
          $Res Function(_$MovieGenreFilterImpl) then) =
      __$$MovieGenreFilterImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<int> genresIds});
}

/// @nodoc
class __$$MovieGenreFilterImplCopyWithImpl<$Res>
    extends _$MoviesEventCopyWithImpl<$Res, _$MovieGenreFilterImpl>
    implements _$$MovieGenreFilterImplCopyWith<$Res> {
  __$$MovieGenreFilterImplCopyWithImpl(_$MovieGenreFilterImpl _value,
      $Res Function(_$MovieGenreFilterImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? genresIds = null,
  }) {
    return _then(_$MovieGenreFilterImpl(
      genresIds: null == genresIds
          ? _value._genresIds
          : genresIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc

class _$MovieGenreFilterImpl implements _MovieGenreFilter {
  const _$MovieGenreFilterImpl({required final List<int> genresIds})
      : _genresIds = genresIds;

  final List<int> _genresIds;
  @override
  List<int> get genresIds {
    if (_genresIds is EqualUnmodifiableListView) return _genresIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_genresIds);
  }

  @override
  String toString() {
    return 'MoviesEvent.movieGenreFilter(genresIds: $genresIds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovieGenreFilterImpl &&
            const DeepCollectionEquality()
                .equals(other._genresIds, _genresIds));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_genresIds));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MovieGenreFilterImplCopyWith<_$MovieGenreFilterImpl> get copyWith =>
      __$$MovieGenreFilterImplCopyWithImpl<_$MovieGenreFilterImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Movie> movies) loadMovies,
    required TResult Function(List<int> genresIds) movieGenreFilter,
    required TResult Function(String query) searchMovie,
  }) {
    return movieGenreFilter(genresIds);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Movie> movies)? loadMovies,
    TResult? Function(List<int> genresIds)? movieGenreFilter,
    TResult? Function(String query)? searchMovie,
  }) {
    return movieGenreFilter?.call(genresIds);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Movie> movies)? loadMovies,
    TResult Function(List<int> genresIds)? movieGenreFilter,
    TResult Function(String query)? searchMovie,
    required TResult orElse(),
  }) {
    if (movieGenreFilter != null) {
      return movieGenreFilter(genresIds);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadMovies value) loadMovies,
    required TResult Function(_MovieGenreFilter value) movieGenreFilter,
    required TResult Function(_SearchMovie value) searchMovie,
  }) {
    return movieGenreFilter(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadMovies value)? loadMovies,
    TResult? Function(_MovieGenreFilter value)? movieGenreFilter,
    TResult? Function(_SearchMovie value)? searchMovie,
  }) {
    return movieGenreFilter?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadMovies value)? loadMovies,
    TResult Function(_MovieGenreFilter value)? movieGenreFilter,
    TResult Function(_SearchMovie value)? searchMovie,
    required TResult orElse(),
  }) {
    if (movieGenreFilter != null) {
      return movieGenreFilter(this);
    }
    return orElse();
  }
}

abstract class _MovieGenreFilter implements MoviesEvent {
  const factory _MovieGenreFilter({required final List<int> genresIds}) =
      _$MovieGenreFilterImpl;

  List<int> get genresIds;
  @JsonKey(ignore: true)
  _$$MovieGenreFilterImplCopyWith<_$MovieGenreFilterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchMovieImplCopyWith<$Res> {
  factory _$$SearchMovieImplCopyWith(
          _$SearchMovieImpl value, $Res Function(_$SearchMovieImpl) then) =
      __$$SearchMovieImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$SearchMovieImplCopyWithImpl<$Res>
    extends _$MoviesEventCopyWithImpl<$Res, _$SearchMovieImpl>
    implements _$$SearchMovieImplCopyWith<$Res> {
  __$$SearchMovieImplCopyWithImpl(
      _$SearchMovieImpl _value, $Res Function(_$SearchMovieImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$SearchMovieImpl(
      null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchMovieImpl implements _SearchMovie {
  const _$SearchMovieImpl(this.query);

  @override
  final String query;

  @override
  String toString() {
    return 'MoviesEvent.searchMovie(query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchMovieImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchMovieImplCopyWith<_$SearchMovieImpl> get copyWith =>
      __$$SearchMovieImplCopyWithImpl<_$SearchMovieImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Movie> movies) loadMovies,
    required TResult Function(List<int> genresIds) movieGenreFilter,
    required TResult Function(String query) searchMovie,
  }) {
    return searchMovie(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Movie> movies)? loadMovies,
    TResult? Function(List<int> genresIds)? movieGenreFilter,
    TResult? Function(String query)? searchMovie,
  }) {
    return searchMovie?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Movie> movies)? loadMovies,
    TResult Function(List<int> genresIds)? movieGenreFilter,
    TResult Function(String query)? searchMovie,
    required TResult orElse(),
  }) {
    if (searchMovie != null) {
      return searchMovie(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadMovies value) loadMovies,
    required TResult Function(_MovieGenreFilter value) movieGenreFilter,
    required TResult Function(_SearchMovie value) searchMovie,
  }) {
    return searchMovie(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadMovies value)? loadMovies,
    TResult? Function(_MovieGenreFilter value)? movieGenreFilter,
    TResult? Function(_SearchMovie value)? searchMovie,
  }) {
    return searchMovie?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadMovies value)? loadMovies,
    TResult Function(_MovieGenreFilter value)? movieGenreFilter,
    TResult Function(_SearchMovie value)? searchMovie,
    required TResult orElse(),
  }) {
    if (searchMovie != null) {
      return searchMovie(this);
    }
    return orElse();
  }
}

abstract class _SearchMovie implements MoviesEvent {
  const factory _SearchMovie(final String query) = _$SearchMovieImpl;

  String get query;
  @JsonKey(ignore: true)
  _$$SearchMovieImplCopyWith<_$SearchMovieImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MoviesState {
  List<Movie> get popularMovies => throw _privateConstructorUsedError;
  List<Movie> get trendingMovies => throw _privateConstructorUsedError;
  List<Movie> get upcomingMovies => throw _privateConstructorUsedError;
  List<Movie> get movieResults => throw _privateConstructorUsedError;
  List<Genre> get genresFilter => throw _privateConstructorUsedError;
  MoviesStateStatus get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MoviesStateCopyWith<MoviesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MoviesStateCopyWith<$Res> {
  factory $MoviesStateCopyWith(
          MoviesState value, $Res Function(MoviesState) then) =
      _$MoviesStateCopyWithImpl<$Res, MoviesState>;
  @useResult
  $Res call(
      {List<Movie> popularMovies,
      List<Movie> trendingMovies,
      List<Movie> upcomingMovies,
      List<Movie> movieResults,
      List<Genre> genresFilter,
      MoviesStateStatus status});
}

/// @nodoc
class _$MoviesStateCopyWithImpl<$Res, $Val extends MoviesState>
    implements $MoviesStateCopyWith<$Res> {
  _$MoviesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? popularMovies = null,
    Object? trendingMovies = null,
    Object? upcomingMovies = null,
    Object? movieResults = null,
    Object? genresFilter = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      popularMovies: null == popularMovies
          ? _value.popularMovies
          : popularMovies // ignore: cast_nullable_to_non_nullable
              as List<Movie>,
      trendingMovies: null == trendingMovies
          ? _value.trendingMovies
          : trendingMovies // ignore: cast_nullable_to_non_nullable
              as List<Movie>,
      upcomingMovies: null == upcomingMovies
          ? _value.upcomingMovies
          : upcomingMovies // ignore: cast_nullable_to_non_nullable
              as List<Movie>,
      movieResults: null == movieResults
          ? _value.movieResults
          : movieResults // ignore: cast_nullable_to_non_nullable
              as List<Movie>,
      genresFilter: null == genresFilter
          ? _value.genresFilter
          : genresFilter // ignore: cast_nullable_to_non_nullable
              as List<Genre>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as MoviesStateStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MoviesStateImplCopyWith<$Res>
    implements $MoviesStateCopyWith<$Res> {
  factory _$$MoviesStateImplCopyWith(
          _$MoviesStateImpl value, $Res Function(_$MoviesStateImpl) then) =
      __$$MoviesStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Movie> popularMovies,
      List<Movie> trendingMovies,
      List<Movie> upcomingMovies,
      List<Movie> movieResults,
      List<Genre> genresFilter,
      MoviesStateStatus status});
}

/// @nodoc
class __$$MoviesStateImplCopyWithImpl<$Res>
    extends _$MoviesStateCopyWithImpl<$Res, _$MoviesStateImpl>
    implements _$$MoviesStateImplCopyWith<$Res> {
  __$$MoviesStateImplCopyWithImpl(
      _$MoviesStateImpl _value, $Res Function(_$MoviesStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? popularMovies = null,
    Object? trendingMovies = null,
    Object? upcomingMovies = null,
    Object? movieResults = null,
    Object? genresFilter = null,
    Object? status = null,
  }) {
    return _then(_$MoviesStateImpl(
      popularMovies: null == popularMovies
          ? _value._popularMovies
          : popularMovies // ignore: cast_nullable_to_non_nullable
              as List<Movie>,
      trendingMovies: null == trendingMovies
          ? _value._trendingMovies
          : trendingMovies // ignore: cast_nullable_to_non_nullable
              as List<Movie>,
      upcomingMovies: null == upcomingMovies
          ? _value._upcomingMovies
          : upcomingMovies // ignore: cast_nullable_to_non_nullable
              as List<Movie>,
      movieResults: null == movieResults
          ? _value._movieResults
          : movieResults // ignore: cast_nullable_to_non_nullable
              as List<Movie>,
      genresFilter: null == genresFilter
          ? _value._genresFilter
          : genresFilter // ignore: cast_nullable_to_non_nullable
              as List<Genre>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as MoviesStateStatus,
    ));
  }
}

/// @nodoc

class _$MoviesStateImpl implements _MoviesState {
  const _$MoviesStateImpl(
      {final List<Movie> popularMovies = const [],
      final List<Movie> trendingMovies = const [],
      final List<Movie> upcomingMovies = const [],
      final List<Movie> movieResults = const [],
      final List<Genre> genresFilter = const [],
      this.status = MoviesStateStatus.loading})
      : _popularMovies = popularMovies,
        _trendingMovies = trendingMovies,
        _upcomingMovies = upcomingMovies,
        _movieResults = movieResults,
        _genresFilter = genresFilter;

  final List<Movie> _popularMovies;
  @override
  @JsonKey()
  List<Movie> get popularMovies {
    if (_popularMovies is EqualUnmodifiableListView) return _popularMovies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_popularMovies);
  }

  final List<Movie> _trendingMovies;
  @override
  @JsonKey()
  List<Movie> get trendingMovies {
    if (_trendingMovies is EqualUnmodifiableListView) return _trendingMovies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_trendingMovies);
  }

  final List<Movie> _upcomingMovies;
  @override
  @JsonKey()
  List<Movie> get upcomingMovies {
    if (_upcomingMovies is EqualUnmodifiableListView) return _upcomingMovies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_upcomingMovies);
  }

  final List<Movie> _movieResults;
  @override
  @JsonKey()
  List<Movie> get movieResults {
    if (_movieResults is EqualUnmodifiableListView) return _movieResults;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_movieResults);
  }

  final List<Genre> _genresFilter;
  @override
  @JsonKey()
  List<Genre> get genresFilter {
    if (_genresFilter is EqualUnmodifiableListView) return _genresFilter;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_genresFilter);
  }

  @override
  @JsonKey()
  final MoviesStateStatus status;

  @override
  String toString() {
    return 'MoviesState(popularMovies: $popularMovies, trendingMovies: $trendingMovies, upcomingMovies: $upcomingMovies, movieResults: $movieResults, genresFilter: $genresFilter, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MoviesStateImpl &&
            const DeepCollectionEquality()
                .equals(other._popularMovies, _popularMovies) &&
            const DeepCollectionEquality()
                .equals(other._trendingMovies, _trendingMovies) &&
            const DeepCollectionEquality()
                .equals(other._upcomingMovies, _upcomingMovies) &&
            const DeepCollectionEquality()
                .equals(other._movieResults, _movieResults) &&
            const DeepCollectionEquality()
                .equals(other._genresFilter, _genresFilter) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_popularMovies),
      const DeepCollectionEquality().hash(_trendingMovies),
      const DeepCollectionEquality().hash(_upcomingMovies),
      const DeepCollectionEquality().hash(_movieResults),
      const DeepCollectionEquality().hash(_genresFilter),
      status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MoviesStateImplCopyWith<_$MoviesStateImpl> get copyWith =>
      __$$MoviesStateImplCopyWithImpl<_$MoviesStateImpl>(this, _$identity);
}

abstract class _MoviesState implements MoviesState {
  const factory _MoviesState(
      {final List<Movie> popularMovies,
      final List<Movie> trendingMovies,
      final List<Movie> upcomingMovies,
      final List<Movie> movieResults,
      final List<Genre> genresFilter,
      final MoviesStateStatus status}) = _$MoviesStateImpl;

  @override
  List<Movie> get popularMovies;
  @override
  List<Movie> get trendingMovies;
  @override
  List<Movie> get upcomingMovies;
  @override
  List<Movie> get movieResults;
  @override
  List<Genre> get genresFilter;
  @override
  MoviesStateStatus get status;
  @override
  @JsonKey(ignore: true)
  _$$MoviesStateImplCopyWith<_$MoviesStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
