import 'package:flutter_dotenv/flutter_dotenv.dart';

class TmdbConfig {
  static Future<void> load() async => dotenv.load();

  static String? get(String key) => dotenv.env[key];

  static String? get tmdbApiKey => get('TMDB_API');

  static String? get tmdbAccessToken => get('TMDB_ACCESS_TOKEN');

  static String get tmdbImagePath => 'https://image.tmdb.org/t/p/w500';
}
