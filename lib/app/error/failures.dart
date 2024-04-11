import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  const Failure({this.message});

  final String? message;

  @override
  List<Object> get props => [message ?? ''];
}

class BackendFailure extends Failure {
  const BackendFailure({super.message});
}

class BackgroundSyncFailure extends Failure {
  const BackgroundSyncFailure({super.message});
}

class LocalStorageFailure extends Failure {
  const LocalStorageFailure({super.message});
}

class NotFoundLocalStorageFailure extends Failure {
  const NotFoundLocalStorageFailure({super.message});
}

class NoDataFoundFailure extends Failure {
  const NoDataFoundFailure({super.message});
}

class NoInternetFailure extends Failure {}

class ScannerFailure extends Failure {}
