import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:visable_challenge/features/movies/domain/entity/genre.dart';

part 'movie.freezed.dart';
part 'movie.g.dart';

@freezed
class Movie with _$Movie {
  const factory Movie({
    required int id,
    required String title,
    @JsonKey(name: 'backdrop_path') String? backdropPath,
    @JsonKey(
      name: 'genre_ids',
      fromJson: Genre.convertGenreIdsToGenreList,
      includeToJson: false,
    )
    List<Genre>? genres,
    @JsonKey(name: 'original_language') String? originalLanguage,
    @JsonKey(name: 'original_title') String? originalTitle,
    required String overview,
    required double popularity,
    @JsonKey(name: 'poster_path') String? posterPath,
    @JsonKey(name: 'release_date') String? releaseDate,
    @JsonKey(name: 'vote_average') double? voteAverage,
  }) = _Movie;

  factory Movie.fromJson(Map<String, dynamic> json) => _$MovieFromJson(json);

  const Movie._();
}
