import 'package:test_prj_ivan/core/arch/domain/entity/failure/failure.dart';

base class FirebaseFailure implements FeatureFailure {
  const FirebaseFailure();
}

final class EmailAlreadyInUseFailure extends FirebaseFailure {
  const EmailAlreadyInUseFailure();
}

final class InvalidEmailFailure extends FirebaseFailure {
  const InvalidEmailFailure();
}

final class OperationNotAllowedFailure extends FirebaseFailure {
  const OperationNotAllowedFailure();
}

final class WeakPasswordFailure extends FirebaseFailure {
  const WeakPasswordFailure();
}

final class InvalidCredentialsFailure extends FirebaseFailure {
  const InvalidCredentialsFailure();
}

final class UserDisabledFailure extends FirebaseFailure {
  const UserDisabledFailure();
}

final class UserNotFoundFailure extends FirebaseFailure {
  const UserNotFoundFailure();
}

final class WrongPasswordFailure extends FirebaseFailure {
  const WrongPasswordFailure();
}

final class InvalidVerificationCodeFailure extends FirebaseFailure {
  const InvalidVerificationCodeFailure();
}

final class InvalidVerificationIdFailure extends FirebaseFailure {
  const InvalidVerificationIdFailure();
}

final class UnknownFirebaseFailure extends FirebaseFailure {
  const UnknownFirebaseFailure();
}
