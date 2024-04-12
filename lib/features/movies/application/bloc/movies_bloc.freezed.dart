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
    required TResult Function(int movieId) movieClicked,
    required TResult Function(String movieListType) movieTypeFilter,
    required TResult Function(int movieGenreId) movieGenreFilter,
    required TResult Function(int castId) actorFilter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Movie> movies)? loadMovies,
    TResult? Function(int movieId)? movieClicked,
    TResult? Function(String movieListType)? movieTypeFilter,
    TResult? Function(int movieGenreId)? movieGenreFilter,
    TResult? Function(int castId)? actorFilter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Movie> movies)? loadMovies,
    TResult Function(int movieId)? movieClicked,
    TResult Function(String movieListType)? movieTypeFilter,
    TResult Function(int movieGenreId)? movieGenreFilter,
    TResult Function(int castId)? actorFilter,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadMovies value) loadMovies,
    required TResult Function(_MovieClicked value) movieClicked,
    required TResult Function(_MovieTypeFilter value) movieTypeFilter,
    required TResult Function(_MovieGenreFilter value) movieGenreFilter,
    required TResult Function(_ActorFilter value) actorFilter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadMovies value)? loadMovies,
    TResult? Function(_MovieClicked value)? movieClicked,
    TResult? Function(_MovieTypeFilter value)? movieTypeFilter,
    TResult? Function(_MovieGenreFilter value)? movieGenreFilter,
    TResult? Function(_ActorFilter value)? actorFilter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadMovies value)? loadMovies,
    TResult Function(_MovieClicked value)? movieClicked,
    TResult Function(_MovieTypeFilter value)? movieTypeFilter,
    TResult Function(_MovieGenreFilter value)? movieGenreFilter,
    TResult Function(_ActorFilter value)? actorFilter,
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
    required TResult Function(int movieId) movieClicked,
    required TResult Function(String movieListType) movieTypeFilter,
    required TResult Function(int movieGenreId) movieGenreFilter,
    required TResult Function(int castId) actorFilter,
  }) {
    return loadMovies(movies);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Movie> movies)? loadMovies,
    TResult? Function(int movieId)? movieClicked,
    TResult? Function(String movieListType)? movieTypeFilter,
    TResult? Function(int movieGenreId)? movieGenreFilter,
    TResult? Function(int castId)? actorFilter,
  }) {
    return loadMovies?.call(movies);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Movie> movies)? loadMovies,
    TResult Function(int movieId)? movieClicked,
    TResult Function(String movieListType)? movieTypeFilter,
    TResult Function(int movieGenreId)? movieGenreFilter,
    TResult Function(int castId)? actorFilter,
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
    required TResult Function(_MovieClicked value) movieClicked,
    required TResult Function(_MovieTypeFilter value) movieTypeFilter,
    required TResult Function(_MovieGenreFilter value) movieGenreFilter,
    required TResult Function(_ActorFilter value) actorFilter,
  }) {
    return loadMovies(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadMovies value)? loadMovies,
    TResult? Function(_MovieClicked value)? movieClicked,
    TResult? Function(_MovieTypeFilter value)? movieTypeFilter,
    TResult? Function(_MovieGenreFilter value)? movieGenreFilter,
    TResult? Function(_ActorFilter value)? actorFilter,
  }) {
    return loadMovies?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadMovies value)? loadMovies,
    TResult Function(_MovieClicked value)? movieClicked,
    TResult Function(_MovieTypeFilter value)? movieTypeFilter,
    TResult Function(_MovieGenreFilter value)? movieGenreFilter,
    TResult Function(_ActorFilter value)? actorFilter,
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
abstract class _$$MovieClickedImplCopyWith<$Res> {
  factory _$$MovieClickedImplCopyWith(
          _$MovieClickedImpl value, $Res Function(_$MovieClickedImpl) then) =
      __$$MovieClickedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int movieId});
}

/// @nodoc
class __$$MovieClickedImplCopyWithImpl<$Res>
    extends _$MoviesEventCopyWithImpl<$Res, _$MovieClickedImpl>
    implements _$$MovieClickedImplCopyWith<$Res> {
  __$$MovieClickedImplCopyWithImpl(
      _$MovieClickedImpl _value, $Res Function(_$MovieClickedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movieId = null,
  }) {
    return _then(_$MovieClickedImpl(
      null == movieId
          ? _value.movieId
          : movieId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$MovieClickedImpl implements _MovieClicked {
  const _$MovieClickedImpl(this.movieId);

  @override
  final int movieId;

  @override
  String toString() {
    return 'MoviesEvent.movieClicked(movieId: $movieId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovieClickedImpl &&
            (identical(other.movieId, movieId) || other.movieId == movieId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, movieId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MovieClickedImplCopyWith<_$MovieClickedImpl> get copyWith =>
      __$$MovieClickedImplCopyWithImpl<_$MovieClickedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Movie> movies) loadMovies,
    required TResult Function(int movieId) movieClicked,
    required TResult Function(String movieListType) movieTypeFilter,
    required TResult Function(int movieGenreId) movieGenreFilter,
    required TResult Function(int castId) actorFilter,
  }) {
    return movieClicked(movieId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Movie> movies)? loadMovies,
    TResult? Function(int movieId)? movieClicked,
    TResult? Function(String movieListType)? movieTypeFilter,
    TResult? Function(int movieGenreId)? movieGenreFilter,
    TResult? Function(int castId)? actorFilter,
  }) {
    return movieClicked?.call(movieId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Movie> movies)? loadMovies,
    TResult Function(int movieId)? movieClicked,
    TResult Function(String movieListType)? movieTypeFilter,
    TResult Function(int movieGenreId)? movieGenreFilter,
    TResult Function(int castId)? actorFilter,
    required TResult orElse(),
  }) {
    if (movieClicked != null) {
      return movieClicked(movieId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadMovies value) loadMovies,
    required TResult Function(_MovieClicked value) movieClicked,
    required TResult Function(_MovieTypeFilter value) movieTypeFilter,
    required TResult Function(_MovieGenreFilter value) movieGenreFilter,
    required TResult Function(_ActorFilter value) actorFilter,
  }) {
    return movieClicked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadMovies value)? loadMovies,
    TResult? Function(_MovieClicked value)? movieClicked,
    TResult? Function(_MovieTypeFilter value)? movieTypeFilter,
    TResult? Function(_MovieGenreFilter value)? movieGenreFilter,
    TResult? Function(_ActorFilter value)? actorFilter,
  }) {
    return movieClicked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadMovies value)? loadMovies,
    TResult Function(_MovieClicked value)? movieClicked,
    TResult Function(_MovieTypeFilter value)? movieTypeFilter,
    TResult Function(_MovieGenreFilter value)? movieGenreFilter,
    TResult Function(_ActorFilter value)? actorFilter,
    required TResult orElse(),
  }) {
    if (movieClicked != null) {
      return movieClicked(this);
    }
    return orElse();
  }
}

abstract class _MovieClicked implements MoviesEvent {
  const factory _MovieClicked(final int movieId) = _$MovieClickedImpl;

  int get movieId;
  @JsonKey(ignore: true)
  _$$MovieClickedImplCopyWith<_$MovieClickedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MovieTypeFilterImplCopyWith<$Res> {
  factory _$$MovieTypeFilterImplCopyWith(_$MovieTypeFilterImpl value,
          $Res Function(_$MovieTypeFilterImpl) then) =
      __$$MovieTypeFilterImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String movieListType});
}

/// @nodoc
class __$$MovieTypeFilterImplCopyWithImpl<$Res>
    extends _$MoviesEventCopyWithImpl<$Res, _$MovieTypeFilterImpl>
    implements _$$MovieTypeFilterImplCopyWith<$Res> {
  __$$MovieTypeFilterImplCopyWithImpl(
      _$MovieTypeFilterImpl _value, $Res Function(_$MovieTypeFilterImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movieListType = null,
  }) {
    return _then(_$MovieTypeFilterImpl(
      null == movieListType
          ? _value.movieListType
          : movieListType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MovieTypeFilterImpl implements _MovieTypeFilter {
  const _$MovieTypeFilterImpl(this.movieListType);

  @override
  final String movieListType;

  @override
  String toString() {
    return 'MoviesEvent.movieTypeFilter(movieListType: $movieListType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovieTypeFilterImpl &&
            (identical(other.movieListType, movieListType) ||
                other.movieListType == movieListType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, movieListType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MovieTypeFilterImplCopyWith<_$MovieTypeFilterImpl> get copyWith =>
      __$$MovieTypeFilterImplCopyWithImpl<_$MovieTypeFilterImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Movie> movies) loadMovies,
    required TResult Function(int movieId) movieClicked,
    required TResult Function(String movieListType) movieTypeFilter,
    required TResult Function(int movieGenreId) movieGenreFilter,
    required TResult Function(int castId) actorFilter,
  }) {
    return movieTypeFilter(movieListType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Movie> movies)? loadMovies,
    TResult? Function(int movieId)? movieClicked,
    TResult? Function(String movieListType)? movieTypeFilter,
    TResult? Function(int movieGenreId)? movieGenreFilter,
    TResult? Function(int castId)? actorFilter,
  }) {
    return movieTypeFilter?.call(movieListType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Movie> movies)? loadMovies,
    TResult Function(int movieId)? movieClicked,
    TResult Function(String movieListType)? movieTypeFilter,
    TResult Function(int movieGenreId)? movieGenreFilter,
    TResult Function(int castId)? actorFilter,
    required TResult orElse(),
  }) {
    if (movieTypeFilter != null) {
      return movieTypeFilter(movieListType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadMovies value) loadMovies,
    required TResult Function(_MovieClicked value) movieClicked,
    required TResult Function(_MovieTypeFilter value) movieTypeFilter,
    required TResult Function(_MovieGenreFilter value) movieGenreFilter,
    required TResult Function(_ActorFilter value) actorFilter,
  }) {
    return movieTypeFilter(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadMovies value)? loadMovies,
    TResult? Function(_MovieClicked value)? movieClicked,
    TResult? Function(_MovieTypeFilter value)? movieTypeFilter,
    TResult? Function(_MovieGenreFilter value)? movieGenreFilter,
    TResult? Function(_ActorFilter value)? actorFilter,
  }) {
    return movieTypeFilter?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadMovies value)? loadMovies,
    TResult Function(_MovieClicked value)? movieClicked,
    TResult Function(_MovieTypeFilter value)? movieTypeFilter,
    TResult Function(_MovieGenreFilter value)? movieGenreFilter,
    TResult Function(_ActorFilter value)? actorFilter,
    required TResult orElse(),
  }) {
    if (movieTypeFilter != null) {
      return movieTypeFilter(this);
    }
    return orElse();
  }
}

abstract class _MovieTypeFilter implements MoviesEvent {
  const factory _MovieTypeFilter(final String movieListType) =
      _$MovieTypeFilterImpl;

  String get movieListType;
  @JsonKey(ignore: true)
  _$$MovieTypeFilterImplCopyWith<_$MovieTypeFilterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MovieGenreFilterImplCopyWith<$Res> {
  factory _$$MovieGenreFilterImplCopyWith(_$MovieGenreFilterImpl value,
          $Res Function(_$MovieGenreFilterImpl) then) =
      __$$MovieGenreFilterImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int movieGenreId});
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
    Object? movieGenreId = null,
  }) {
    return _then(_$MovieGenreFilterImpl(
      null == movieGenreId
          ? _value.movieGenreId
          : movieGenreId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$MovieGenreFilterImpl implements _MovieGenreFilter {
  const _$MovieGenreFilterImpl(this.movieGenreId);

  @override
  final int movieGenreId;

  @override
  String toString() {
    return 'MoviesEvent.movieGenreFilter(movieGenreId: $movieGenreId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovieGenreFilterImpl &&
            (identical(other.movieGenreId, movieGenreId) ||
                other.movieGenreId == movieGenreId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, movieGenreId);

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
    required TResult Function(int movieId) movieClicked,
    required TResult Function(String movieListType) movieTypeFilter,
    required TResult Function(int movieGenreId) movieGenreFilter,
    required TResult Function(int castId) actorFilter,
  }) {
    return movieGenreFilter(movieGenreId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Movie> movies)? loadMovies,
    TResult? Function(int movieId)? movieClicked,
    TResult? Function(String movieListType)? movieTypeFilter,
    TResult? Function(int movieGenreId)? movieGenreFilter,
    TResult? Function(int castId)? actorFilter,
  }) {
    return movieGenreFilter?.call(movieGenreId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Movie> movies)? loadMovies,
    TResult Function(int movieId)? movieClicked,
    TResult Function(String movieListType)? movieTypeFilter,
    TResult Function(int movieGenreId)? movieGenreFilter,
    TResult Function(int castId)? actorFilter,
    required TResult orElse(),
  }) {
    if (movieGenreFilter != null) {
      return movieGenreFilter(movieGenreId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadMovies value) loadMovies,
    required TResult Function(_MovieClicked value) movieClicked,
    required TResult Function(_MovieTypeFilter value) movieTypeFilter,
    required TResult Function(_MovieGenreFilter value) movieGenreFilter,
    required TResult Function(_ActorFilter value) actorFilter,
  }) {
    return movieGenreFilter(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadMovies value)? loadMovies,
    TResult? Function(_MovieClicked value)? movieClicked,
    TResult? Function(_MovieTypeFilter value)? movieTypeFilter,
    TResult? Function(_MovieGenreFilter value)? movieGenreFilter,
    TResult? Function(_ActorFilter value)? actorFilter,
  }) {
    return movieGenreFilter?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadMovies value)? loadMovies,
    TResult Function(_MovieClicked value)? movieClicked,
    TResult Function(_MovieTypeFilter value)? movieTypeFilter,
    TResult Function(_MovieGenreFilter value)? movieGenreFilter,
    TResult Function(_ActorFilter value)? actorFilter,
    required TResult orElse(),
  }) {
    if (movieGenreFilter != null) {
      return movieGenreFilter(this);
    }
    return orElse();
  }
}

abstract class _MovieGenreFilter implements MoviesEvent {
  const factory _MovieGenreFilter(final int movieGenreId) =
      _$MovieGenreFilterImpl;

  int get movieGenreId;
  @JsonKey(ignore: true)
  _$$MovieGenreFilterImplCopyWith<_$MovieGenreFilterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ActorFilterImplCopyWith<$Res> {
  factory _$$ActorFilterImplCopyWith(
          _$ActorFilterImpl value, $Res Function(_$ActorFilterImpl) then) =
      __$$ActorFilterImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int castId});
}

/// @nodoc
class __$$ActorFilterImplCopyWithImpl<$Res>
    extends _$MoviesEventCopyWithImpl<$Res, _$ActorFilterImpl>
    implements _$$ActorFilterImplCopyWith<$Res> {
  __$$ActorFilterImplCopyWithImpl(
      _$ActorFilterImpl _value, $Res Function(_$ActorFilterImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? castId = null,
  }) {
    return _then(_$ActorFilterImpl(
      null == castId
          ? _value.castId
          : castId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ActorFilterImpl implements _ActorFilter {
  const _$ActorFilterImpl(this.castId);

  @override
  final int castId;

  @override
  String toString() {
    return 'MoviesEvent.actorFilter(castId: $castId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActorFilterImpl &&
            (identical(other.castId, castId) || other.castId == castId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, castId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ActorFilterImplCopyWith<_$ActorFilterImpl> get copyWith =>
      __$$ActorFilterImplCopyWithImpl<_$ActorFilterImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Movie> movies) loadMovies,
    required TResult Function(int movieId) movieClicked,
    required TResult Function(String movieListType) movieTypeFilter,
    required TResult Function(int movieGenreId) movieGenreFilter,
    required TResult Function(int castId) actorFilter,
  }) {
    return actorFilter(castId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Movie> movies)? loadMovies,
    TResult? Function(int movieId)? movieClicked,
    TResult? Function(String movieListType)? movieTypeFilter,
    TResult? Function(int movieGenreId)? movieGenreFilter,
    TResult? Function(int castId)? actorFilter,
  }) {
    return actorFilter?.call(castId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Movie> movies)? loadMovies,
    TResult Function(int movieId)? movieClicked,
    TResult Function(String movieListType)? movieTypeFilter,
    TResult Function(int movieGenreId)? movieGenreFilter,
    TResult Function(int castId)? actorFilter,
    required TResult orElse(),
  }) {
    if (actorFilter != null) {
      return actorFilter(castId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadMovies value) loadMovies,
    required TResult Function(_MovieClicked value) movieClicked,
    required TResult Function(_MovieTypeFilter value) movieTypeFilter,
    required TResult Function(_MovieGenreFilter value) movieGenreFilter,
    required TResult Function(_ActorFilter value) actorFilter,
  }) {
    return actorFilter(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadMovies value)? loadMovies,
    TResult? Function(_MovieClicked value)? movieClicked,
    TResult? Function(_MovieTypeFilter value)? movieTypeFilter,
    TResult? Function(_MovieGenreFilter value)? movieGenreFilter,
    TResult? Function(_ActorFilter value)? actorFilter,
  }) {
    return actorFilter?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadMovies value)? loadMovies,
    TResult Function(_MovieClicked value)? movieClicked,
    TResult Function(_MovieTypeFilter value)? movieTypeFilter,
    TResult Function(_MovieGenreFilter value)? movieGenreFilter,
    TResult Function(_ActorFilter value)? actorFilter,
    required TResult orElse(),
  }) {
    if (actorFilter != null) {
      return actorFilter(this);
    }
    return orElse();
  }
}

abstract class _ActorFilter implements MoviesEvent {
  const factory _ActorFilter(final int castId) = _$ActorFilterImpl;

  int get castId;
  @JsonKey(ignore: true)
  _$$ActorFilterImplCopyWith<_$ActorFilterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MoviesState {
  List<Movie> get popularMovies => throw _privateConstructorUsedError;
  List<Movie> get trendingMovies => throw _privateConstructorUsedError;
  List<Movie> get upcomingMovies => throw _privateConstructorUsedError;
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
      this.status = MoviesStateStatus.loading})
      : _popularMovies = popularMovies,
        _trendingMovies = trendingMovies,
        _upcomingMovies = upcomingMovies;

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

  @override
  @JsonKey()
  final MoviesStateStatus status;

  @override
  String toString() {
    return 'MoviesState(popularMovies: $popularMovies, trendingMovies: $trendingMovies, upcomingMovies: $upcomingMovies, status: $status)';
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
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_popularMovies),
      const DeepCollectionEquality().hash(_trendingMovies),
      const DeepCollectionEquality().hash(_upcomingMovies),
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
      final MoviesStateStatus status}) = _$MoviesStateImpl;

  @override
  List<Movie> get popularMovies;
  @override
  List<Movie> get trendingMovies;
  @override
  List<Movie> get upcomingMovies;
  @override
  MoviesStateStatus get status;
  @override
  @JsonKey(ignore: true)
  _$$MoviesStateImplCopyWith<_$MoviesStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
