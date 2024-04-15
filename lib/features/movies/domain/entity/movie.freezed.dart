// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Movie _$MovieFromJson(Map<String, dynamic> json) {
  return _Movie.fromJson(json);
}

/// @nodoc
mixin _$Movie {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'backdrop_path')
  String? get backdropPath => throw _privateConstructorUsedError;
  @JsonKey(
      name: 'genre_ids',
      fromJson: Genre.convertGenreIdsToGenreList,
      includeToJson: false)
  List<Genre>? get genres => throw _privateConstructorUsedError;
  @JsonKey(name: 'original_language')
  String? get originalLanguage => throw _privateConstructorUsedError;
  @JsonKey(name: 'original_title')
  String? get originalTitle => throw _privateConstructorUsedError;
  String get overview => throw _privateConstructorUsedError;
  double get popularity => throw _privateConstructorUsedError;
  @JsonKey(name: 'poster_path')
  String? get posterPath => throw _privateConstructorUsedError;
  @JsonKey(name: 'release_date')
  String? get releaseDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'vote_average')
  double? get voteAverage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieCopyWith<Movie> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieCopyWith<$Res> {
  factory $MovieCopyWith(Movie value, $Res Function(Movie) then) =
      _$MovieCopyWithImpl<$Res, Movie>;
  @useResult
  $Res call(
      {int id,
      String title,
      @JsonKey(name: 'backdrop_path') String? backdropPath,
      @JsonKey(
          name: 'genre_ids',
          fromJson: Genre.convertGenreIdsToGenreList,
          includeToJson: false)
      List<Genre>? genres,
      @JsonKey(name: 'original_language') String? originalLanguage,
      @JsonKey(name: 'original_title') String? originalTitle,
      String overview,
      double popularity,
      @JsonKey(name: 'poster_path') String? posterPath,
      @JsonKey(name: 'release_date') String? releaseDate,
      @JsonKey(name: 'vote_average') double? voteAverage});
}

/// @nodoc
class _$MovieCopyWithImpl<$Res, $Val extends Movie>
    implements $MovieCopyWith<$Res> {
  _$MovieCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? backdropPath = freezed,
    Object? genres = freezed,
    Object? originalLanguage = freezed,
    Object? originalTitle = freezed,
    Object? overview = null,
    Object? popularity = null,
    Object? posterPath = freezed,
    Object? releaseDate = freezed,
    Object? voteAverage = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      backdropPath: freezed == backdropPath
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String?,
      genres: freezed == genres
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<Genre>?,
      originalLanguage: freezed == originalLanguage
          ? _value.originalLanguage
          : originalLanguage // ignore: cast_nullable_to_non_nullable
              as String?,
      originalTitle: freezed == originalTitle
          ? _value.originalTitle
          : originalTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      overview: null == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
      popularity: null == popularity
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as double,
      posterPath: freezed == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      releaseDate: freezed == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String?,
      voteAverage: freezed == voteAverage
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MovieImplCopyWith<$Res> implements $MovieCopyWith<$Res> {
  factory _$$MovieImplCopyWith(
          _$MovieImpl value, $Res Function(_$MovieImpl) then) =
      __$$MovieImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String title,
      @JsonKey(name: 'backdrop_path') String? backdropPath,
      @JsonKey(
          name: 'genre_ids',
          fromJson: Genre.convertGenreIdsToGenreList,
          includeToJson: false)
      List<Genre>? genres,
      @JsonKey(name: 'original_language') String? originalLanguage,
      @JsonKey(name: 'original_title') String? originalTitle,
      String overview,
      double popularity,
      @JsonKey(name: 'poster_path') String? posterPath,
      @JsonKey(name: 'release_date') String? releaseDate,
      @JsonKey(name: 'vote_average') double? voteAverage});
}

/// @nodoc
class __$$MovieImplCopyWithImpl<$Res>
    extends _$MovieCopyWithImpl<$Res, _$MovieImpl>
    implements _$$MovieImplCopyWith<$Res> {
  __$$MovieImplCopyWithImpl(
      _$MovieImpl _value, $Res Function(_$MovieImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? backdropPath = freezed,
    Object? genres = freezed,
    Object? originalLanguage = freezed,
    Object? originalTitle = freezed,
    Object? overview = null,
    Object? popularity = null,
    Object? posterPath = freezed,
    Object? releaseDate = freezed,
    Object? voteAverage = freezed,
  }) {
    return _then(_$MovieImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      backdropPath: freezed == backdropPath
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String?,
      genres: freezed == genres
          ? _value._genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<Genre>?,
      originalLanguage: freezed == originalLanguage
          ? _value.originalLanguage
          : originalLanguage // ignore: cast_nullable_to_non_nullable
              as String?,
      originalTitle: freezed == originalTitle
          ? _value.originalTitle
          : originalTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      overview: null == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
      popularity: null == popularity
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as double,
      posterPath: freezed == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      releaseDate: freezed == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String?,
      voteAverage: freezed == voteAverage
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MovieImpl extends _Movie {
  const _$MovieImpl(
      {required this.id,
      required this.title,
      @JsonKey(name: 'backdrop_path') this.backdropPath,
      @JsonKey(
          name: 'genre_ids',
          fromJson: Genre.convertGenreIdsToGenreList,
          includeToJson: false)
      final List<Genre>? genres,
      @JsonKey(name: 'original_language') this.originalLanguage,
      @JsonKey(name: 'original_title') this.originalTitle,
      required this.overview,
      required this.popularity,
      @JsonKey(name: 'poster_path') this.posterPath,
      @JsonKey(name: 'release_date') this.releaseDate,
      @JsonKey(name: 'vote_average') this.voteAverage})
      : _genres = genres,
        super._();

  factory _$MovieImpl.fromJson(Map<String, dynamic> json) =>
      _$$MovieImplFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  @JsonKey(name: 'backdrop_path')
  final String? backdropPath;
  final List<Genre>? _genres;
  @override
  @JsonKey(
      name: 'genre_ids',
      fromJson: Genre.convertGenreIdsToGenreList,
      includeToJson: false)
  List<Genre>? get genres {
    final value = _genres;
    if (value == null) return null;
    if (_genres is EqualUnmodifiableListView) return _genres;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'original_language')
  final String? originalLanguage;
  @override
  @JsonKey(name: 'original_title')
  final String? originalTitle;
  @override
  final String overview;
  @override
  final double popularity;
  @override
  @JsonKey(name: 'poster_path')
  final String? posterPath;
  @override
  @JsonKey(name: 'release_date')
  final String? releaseDate;
  @override
  @JsonKey(name: 'vote_average')
  final double? voteAverage;

  @override
  String toString() {
    return 'Movie(id: $id, title: $title, backdropPath: $backdropPath, genres: $genres, originalLanguage: $originalLanguage, originalTitle: $originalTitle, overview: $overview, popularity: $popularity, posterPath: $posterPath, releaseDate: $releaseDate, voteAverage: $voteAverage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovieImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.backdropPath, backdropPath) ||
                other.backdropPath == backdropPath) &&
            const DeepCollectionEquality().equals(other._genres, _genres) &&
            (identical(other.originalLanguage, originalLanguage) ||
                other.originalLanguage == originalLanguage) &&
            (identical(other.originalTitle, originalTitle) ||
                other.originalTitle == originalTitle) &&
            (identical(other.overview, overview) ||
                other.overview == overview) &&
            (identical(other.popularity, popularity) ||
                other.popularity == popularity) &&
            (identical(other.posterPath, posterPath) ||
                other.posterPath == posterPath) &&
            (identical(other.releaseDate, releaseDate) ||
                other.releaseDate == releaseDate) &&
            (identical(other.voteAverage, voteAverage) ||
                other.voteAverage == voteAverage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      backdropPath,
      const DeepCollectionEquality().hash(_genres),
      originalLanguage,
      originalTitle,
      overview,
      popularity,
      posterPath,
      releaseDate,
      voteAverage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MovieImplCopyWith<_$MovieImpl> get copyWith =>
      __$$MovieImplCopyWithImpl<_$MovieImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MovieImplToJson(
      this,
    );
  }
}

abstract class _Movie extends Movie {
  const factory _Movie(
      {required final int id,
      required final String title,
      @JsonKey(name: 'backdrop_path') final String? backdropPath,
      @JsonKey(
          name: 'genre_ids',
          fromJson: Genre.convertGenreIdsToGenreList,
          includeToJson: false)
      final List<Genre>? genres,
      @JsonKey(name: 'original_language') final String? originalLanguage,
      @JsonKey(name: 'original_title') final String? originalTitle,
      required final String overview,
      required final double popularity,
      @JsonKey(name: 'poster_path') final String? posterPath,
      @JsonKey(name: 'release_date') final String? releaseDate,
      @JsonKey(name: 'vote_average') final double? voteAverage}) = _$MovieImpl;
  const _Movie._() : super._();

  factory _Movie.fromJson(Map<String, dynamic> json) = _$MovieImpl.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  @JsonKey(name: 'backdrop_path')
  String? get backdropPath;
  @override
  @JsonKey(
      name: 'genre_ids',
      fromJson: Genre.convertGenreIdsToGenreList,
      includeToJson: false)
  List<Genre>? get genres;
  @override
  @JsonKey(name: 'original_language')
  String? get originalLanguage;
  @override
  @JsonKey(name: 'original_title')
  String? get originalTitle;
  @override
  String get overview;
  @override
  double get popularity;
  @override
  @JsonKey(name: 'poster_path')
  String? get posterPath;
  @override
  @JsonKey(name: 'release_date')
  String? get releaseDate;
  @override
  @JsonKey(name: 'vote_average')
  double? get voteAverage;
  @override
  @JsonKey(ignore: true)
  _$$MovieImplCopyWith<_$MovieImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
