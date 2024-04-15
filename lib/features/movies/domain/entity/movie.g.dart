// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MovieImpl _$$MovieImplFromJson(Map<String, dynamic> json) => _$MovieImpl(
      id: json['id'] as int,
      title: json['title'] as String,
      backdropPath: json['backdrop_path'] as String?,
      genres: Genre.convertGenreIdsToGenreList(json['genre_ids'] as List),
      originalLanguage: json['original_language'] as String?,
      originalTitle: json['original_title'] as String?,
      overview: json['overview'] as String,
      popularity: (json['popularity'] as num).toDouble(),
      posterPath: json['poster_path'] as String?,
      releaseDate: json['release_date'] as String?,
      voteAverage: (json['vote_average'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$MovieImplToJson(_$MovieImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'backdrop_path': instance.backdropPath,
      'original_language': instance.originalLanguage,
      'original_title': instance.originalTitle,
      'overview': instance.overview,
      'popularity': instance.popularity,
      'poster_path': instance.posterPath,
      'release_date': instance.releaseDate,
      'vote_average': instance.voteAverage,
    };
