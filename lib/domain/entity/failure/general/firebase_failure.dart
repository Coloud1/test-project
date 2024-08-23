import 'package:test_prj_ivan/core/arch/domain/entity/failure/failure.dart';

base class FirebaseFailure implements Failure {
  final String? message;

  const FirebaseFailure(this.message);
}

final class UnknownFirebaseFailure extends FirebaseFailure {
  const UnknownFirebaseFailure(super.message);
}
