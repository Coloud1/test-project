import 'package:test_prj_ivan/core/arch/domain/entity/failure/failure.dart';

class UnknownFailure extends Failure {
  const UnknownFailure(Object? error, [StackTrace? stackTrace]);
}
