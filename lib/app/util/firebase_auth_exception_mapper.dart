import 'package:firebase_auth/firebase_auth.dart';
import 'package:test_prj_ivan/app/util/firebase_consts.dart';
import 'package:test_prj_ivan/domain/entity/failure/registration_failure/registration_failure.dart';

class FirebaseAuthExceptionMapper {
  static FirebaseFailure mapRawStringToFailure(
    FirebaseAuthException exception,
  ) {
    return switch (exception.code) {
      FirebaseConsts.emailAlreadyInUse => const EmailAlreadyInUseFailure(),
      FirebaseConsts.invalidEmail => const InvalidEmailFailure(),
      FirebaseConsts.operationNotAllowed => const OperationNotAllowedFailure(),
      FirebaseConsts.weakPassword => const WeakPasswordFailure(),
      FirebaseConsts.invalidCredentials => const InvalidCredentialsFailure(),
      FirebaseConsts.userDisabled => const UserDisabledFailure(),
      FirebaseConsts.userNotFound => const UserNotFoundFailure(),
      FirebaseConsts.wrongPassword => const WrongPasswordFailure(),
      FirebaseConsts.invalidVerificationCode =>
        const InvalidVerificationCodeFailure(),
      FirebaseConsts.invalidVerificationId =>
        const InvalidVerificationIdFailure(),
      String() => const UnknownFirebaseFailure(),
    };
  }

  const FirebaseAuthExceptionMapper._();
}
