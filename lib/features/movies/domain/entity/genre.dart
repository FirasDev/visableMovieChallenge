import 'package:freezed_annotation/freezed_annotation.dart';

part 'genre.freezed.dart';
part 'genre.g.dart';

@freezed
class Genre with _$Genre {
  const factory Genre({
    required int id,
    required String name,
  }) = _Genre;

  factory Genre.fromJson(Map<String, dynamic> json) => _$GenreFromJson(json);

  const Genre._();

  static List<Genre> convertGenreIdsToGenreList(List<dynamic> genreIds) {
    List<Genre> genres = [];
    for (final id in genreIds) {
      if (id is int) {
        for (final genre in genresList) {
          if (genre.id == id) {
            genres.add(genre);
          }
        }
      }
    }
    return genres;
  }

  static List<int> convertGenreListToGenreIds(List<Genre> genres) {
    return genres
        .map((genre) => genresList
            .firstWhere((genre) => genre.name == genre.name,
                orElse: () => genre)
            .id)
        .toList();
  }
}

final List<Genre> genresList = [
  Genre(id: 28, name: "Action"),
  Genre(id: 12, name: "Adventure"),
  Genre(id: 16, name: "Animation"),
  Genre(id: 35, name: "Comedy"),
  Genre(id: 80, name: "Crime"),
  Genre(id: 99, name: "Documentary"),
  Genre(id: 18, name: "Drama"),
  Genre(id: 10751, name: "Family"),
  Genre(id: 14, name: "Fantasy"),
  Genre(id: 36, name: "History"),
  Genre(id: 27, name: "Horror"),
  Genre(id: 10402, name: "Music"),
  Genre(id: 9648, name: "Mystery"),
  Genre(id: 10749, name: "Romance"),
  Genre(id: 878, name: "Science Fiction"),
  Genre(id: 10770, name: "TV Movie"),
  Genre(id: 53, name: "Thriller"),
  Genre(id: 10752, name: "War"),
  Genre(id: 37, name: "Western"),
];
