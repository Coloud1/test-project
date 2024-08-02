import 'package:firebase_auth/firebase_auth.dart';
import 'package:test_prj_ivan/app/util/firebase_consts.dart';
import 'package:test_prj_ivan/domain/entity/failure/firebase_auth_failure/firebase_auth_failure.dart';

class MapFirebaseAuthException {
  static FirebaseAuthFailure mapRawStringToFailure(
    FirebaseAuthException exception,
  ) {
    return switch (exception.code) {
      FirebaseConsts.emailAlreadyInUse =>
        EmailAlreadyInUseFailure(exception.message),
      FirebaseConsts.invalidEmail => InvalidEmailFailure(exception.message),
      FirebaseConsts.operationNotAllowed =>
        OperationNotAllowedFailure(exception.message),
      FirebaseConsts.weakPassword => WeakPasswordFailure(exception.message),
      FirebaseConsts.invalidCredentials =>
        InvalidCredentialsFailure(exception.message),
      FirebaseConsts.userDisabled => UserDisabledFailure(exception.message),
      FirebaseConsts.userNotFound => UserNotFoundFailure(exception.message),
      FirebaseConsts.wrongPassword => WrongPasswordFailure(exception.message),
      FirebaseConsts.invalidVerificationCode =>
        InvalidVerificationCodeFailure(exception.message),
      FirebaseConsts.invalidVerificationId =>
        InvalidVerificationIdFailure(exception.message),
      String() => UnknownAuthFailure(exception.message),
    };
  }

  const MapFirebaseAuthException._();
}
