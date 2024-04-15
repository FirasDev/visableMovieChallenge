import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:visable_challenge/app/helper/tmdb_config.dart';
import 'package:visable_challenge/features/movies/data/api/movies_api.dart';
import 'package:visable_challenge/features/movies/domain/entity/movie.dart';
import 'package:visable_challenge/infrastructure/exceptions/http_exceptions.dart';

@LazySingleton(as: MoviesApi)
class RemoteMoviesApi implements MoviesApi {
  RemoteMoviesApi(this.dio);
  final Dio dio;

  //* Get a list of movies depending on listType parameter
  //* listType parameter can be popular, trending or upcoming
  @override
  Future<List<Movie>> getMoviesListType({
    required String listType,
  }) async {
    final getMovieListTypeUrl = '/movie/$listType';
    final params = {
      'api_key': TmdbConfig.tmdbApiKey,
      'language': 'en-US',
      'page': 1,
    };

    try {
      final Response<Map<String, dynamic>> response = await dio.get(
        getMovieListTypeUrl,
        queryParameters: params,
      );
      final List<Movie> movies = (response.data?['results'] as List)
          .map((i) => Movie.fromJson(i as Map<String, dynamic>))
          .toList();

      return movies;
    } on DioException catch (e) {
      throw HttpExceptions.fromDioError(e);
    }
  }

  //* Get a list of movies from a title search
  @override
  Future<List<Movie>> searchMovie({
    required String query,
  }) async {
    const searchMovieUrl = '/search/movie';
    final params = {
      'query': query,
      'api_key': TmdbConfig.tmdbApiKey,
      'language': 'en-US',
      'include_adult': 'false',
      'page': 1,
    };

    try {
      final Response<Map<String, dynamic>> response = await dio.get(
        searchMovieUrl,
        queryParameters: params,
      );
      final List<Movie> movies = (response.data?['results'] as List)
          .map((i) => Movie.fromJson(i as Map<String, dynamic>))
          .toList();

      return movies;
    } on DioException catch (e) {
      throw HttpExceptions.fromDioError(e);
    }
  }
}
