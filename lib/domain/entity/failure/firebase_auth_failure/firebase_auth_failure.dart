import 'package:test_prj_ivan/domain/entity/failure/general/firebase_failure.dart';

base class FirebaseAuthFailure extends FirebaseFailure {
  const FirebaseAuthFailure(super.message);
}

final class EmailAlreadyInUseFailure extends FirebaseAuthFailure {
  const EmailAlreadyInUseFailure(super.message);
}

final class InvalidEmailFailure extends FirebaseAuthFailure {
  const InvalidEmailFailure(super.message);
}

final class OperationNotAllowedFailure extends FirebaseAuthFailure {
  const OperationNotAllowedFailure(super.message);
}

final class WeakPasswordFailure extends FirebaseAuthFailure {
  const WeakPasswordFailure(super.message);
}

final class InvalidCredentialsFailure extends FirebaseAuthFailure {
  const InvalidCredentialsFailure(super.message);
}

final class UserDisabledFailure extends FirebaseAuthFailure {
  const UserDisabledFailure(super.message);
}

final class UserNotFoundFailure extends FirebaseAuthFailure {
  const UserNotFoundFailure(super.message);
}

final class WrongPasswordFailure extends FirebaseAuthFailure {
  const WrongPasswordFailure(super.message);
}

final class InvalidVerificationCodeFailure extends FirebaseAuthFailure {
  const InvalidVerificationCodeFailure(super.message);
}

final class InvalidVerificationIdFailure extends FirebaseAuthFailure {
  const InvalidVerificationIdFailure(super.message);
}

final class UnknownAuthFailure extends FirebaseAuthFailure {
  const UnknownAuthFailure(super.message);
}
