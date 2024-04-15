import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mocktail/mocktail.dart';
import 'package:visable_challenge/app/error/failures.dart';
import 'package:visable_challenge/features/movies/data/api/movies_api.dart';
import 'package:visable_challenge/features/movies/data/repository/movies_repository_impl.dart';
import 'package:visable_challenge/features/movies/domain/repository/movies_repository.dart';
import 'package:visable_challenge/infrastructure/exceptions/http_exceptions.dart';

class MockMoviesApi extends Mock implements MoviesApi {}

void main() {
  late MockMoviesApi moviesApiMock;
  late MoviesRepository moviesRepository;

  setUp(() {
    moviesApiMock = MockMoviesApi();
    moviesRepository = MoviesRepositoryImpl(moviesApiMock);
  });
  test('List of movies return failure', () async {
    when(() =>
            moviesApiMock.getMoviesListType(listType: any(named: 'listType')))
        .thenThrow(HttpExceptions.fromDioError(DioException.badResponse(
            statusCode: 401,
            requestOptions: RequestOptions(),
            response: Response(
              requestOptions: RequestOptions(),
            ))));
    final result = await moviesRepository.getMoviesListType(listType: 'xxx');
    expect(result, const Left(NoDataFoundFailure()));
    verify(() =>
            moviesApiMock.getMoviesListType(listType: any(named: 'listType')))
        .called(1);
  });
  test('List of movies return POPULAR movies', () async {
    when(() =>
            moviesApiMock.getMoviesListType(listType: any(named: 'listType')))
        .thenAnswer((_) => Future.value([]));
    final result =
        await moviesRepository.getMoviesListType(listType: 'popular');
    expect(result.isRight(), true);
    verify(() =>
            moviesApiMock.getMoviesListType(listType: any(named: 'listType')))
        .called(1);
  });
}
