import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:visable_challenge/features/movies/domain/entity/genre.dart';

part 'movie.freezed.dart';
part 'movie.g.dart';

@freezed
class Movie with _$Movie {
  const factory Movie({
    required int id,
    required String title,
    @JsonKey(name: 'backdrop_path') required String backdropPath,
    @JsonKey(
      name: 'genre_ids',
      fromJson: Genre.convertGenreIdsToGenreList,
      toJson: Genre.convertGenreListToGenreIds,
    )
    required List<Genre> genres,
    @JsonKey(name: 'original_language') required String originalLanguage,
    @JsonKey(name: 'original_title') required String originalTitle,
    required String overview,
    required double popularity,
    @JsonKey(name: 'poster_path') required String posterPath,
    @JsonKey(name: 'release_date') required String releaseDate,
    @JsonKey(name: 'vote_average') required double voteAverage,
  }) = _Movie;

  factory Movie.fromJson(Map<String, dynamic> json) => _$MovieFromJson(json);

  const Movie._();
}
