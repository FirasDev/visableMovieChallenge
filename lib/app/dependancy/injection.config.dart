// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:visable_challenge/app/dependancy/injection_module.dart' as _i10;
import 'package:visable_challenge/features/movies/application/bloc/movies_bloc.dart'
    as _i9;
import 'package:visable_challenge/features/movies/data/api/movies_api.dart'
    as _i4;
import 'package:visable_challenge/features/movies/data/api/remote_movies_api.dart'
    as _i5;
import 'package:visable_challenge/features/movies/data/repository/movies_repository_impl.dart'
    as _i7;
import 'package:visable_challenge/features/movies/domain/repository/movies_repository.dart'
    as _i6;
import 'package:visable_challenge/features/movies/domain/usecases/get_movies_usecase.dart'
    as _i8;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    gh.lazySingleton<_i3.Dio>(() => registerModule.dio());
    gh.lazySingleton<_i4.MoviesApi>(() => _i5.RemoteMoviesApi(gh<_i3.Dio>()));
    gh.lazySingleton<_i6.MoviesRepository>(
        () => _i7.MoviesRepositoryImpl(gh<_i4.MoviesApi>()));
    gh.lazySingleton<_i8.GetMoviesUseCase>(
        () => _i8.GetMoviesUseCase(gh<_i6.MoviesRepository>()));
    gh.factory<_i9.MoviesBloc>(() => _i9.MoviesBloc(
          gh<_i8.GetMoviesUseCase>(),
          gh<_i6.MoviesRepository>(),
        ));
    return this;
  }
}

class _$RegisterModule extends _i10.RegisterModule {}
