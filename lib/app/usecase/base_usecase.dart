//ignore_for_file: unused-code

import 'package:equatable/equatable.dart';
import 'package:fpdart/fpdart.dart';
import 'package:visable_challenge/app/error/failures.dart';

abstract class UseCase<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}

abstract class NoParamsUseCase<Type> {
  Future<Either<Failure, Type>> call();
}

// Placeholder in case we don't have any parameter to pass on
class NoParams extends Equatable {
  const NoParams();

  @override
  List<Object> get props => [];
}
