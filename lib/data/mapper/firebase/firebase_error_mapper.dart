import 'package:firebase_auth/firebase_auth.dart';
import 'package:test_prj_ivan/app/util/firebase_consts/firebase_auth_error_codes.dart';
import 'package:test_prj_ivan/app/util/firebase_consts/firebase_storage_error_codes.dart';
import 'package:test_prj_ivan/core/arch/domain/common/converter/mapper.dart';
import 'package:test_prj_ivan/domain/entity/failure/firebase/firebase_auth_failure.dart';
import 'package:test_prj_ivan/domain/entity/failure/firebase/firebase_storage_failure.dart';

final class FirebaseErrorMapper {
  static FirebaseStorageFailure mapFirebaseStorageExceptionToFailure(
    FirebaseException from,
  ) =>
      _MapFirebaseStorageExceptionToFailure().map(from);

  static FirebaseAuthFailure mapFirebaseAuthExceptionToFailure(
    FirebaseAuthException from,
  ) =>
      _MapFirebaseAuthExceptionToFailure().map(from);

  const FirebaseErrorMapper._();
}

class _MapFirebaseAuthExceptionToFailure
    extends Mapper<FirebaseAuthException, FirebaseAuthFailure> {
  @override
  FirebaseAuthFailure map(FirebaseAuthException from) {
    return switch (from.code) {
      FirebaseAuthErrorCodes.emailAlreadyInUse =>
        EmailAlreadyInUseFailure(from.message),
      FirebaseAuthErrorCodes.invalidEmail => InvalidEmailFailure(from.message),
      FirebaseAuthErrorCodes.operationNotAllowed =>
        OperationNotAllowedFailure(from.message),
      FirebaseAuthErrorCodes.weakPassword => WeakPasswordFailure(from.message),
      FirebaseAuthErrorCodes.invalidCredentials =>
        InvalidCredentialsFailure(from.message),
      FirebaseAuthErrorCodes.userDisabled => UserDisabledFailure(from.message),
      FirebaseAuthErrorCodes.userNotFound => UserNotFoundFailure(from.message),
      FirebaseAuthErrorCodes.wrongPassword =>
        WrongPasswordFailure(from.message),
      FirebaseAuthErrorCodes.invalidVerificationCode =>
        InvalidVerificationCodeFailure(from.message),
      FirebaseAuthErrorCodes.invalidVerificationId =>
        InvalidVerificationIdFailure(from.message),
      _ => UnknownAuthFailure(from.message),
    };
  }
}

class _MapFirebaseStorageExceptionToFailure
    extends Mapper<FirebaseException, FirebaseStorageFailure> {
  @override
  FirebaseStorageFailure map(FirebaseException from) {
    return switch (from.code) {
      FirebaseStorageErrorCodes.objectNotFound =>
        FirebaseStorageObjectNotFoundFailure(from.message),
      FirebaseStorageErrorCodes.bucketNotFound =>
        FirebaseStorageBucketNotFoundFailure(from.message),
      FirebaseStorageErrorCodes.projectNotFound =>
        FirebaseStorageProjectNotFoundFailure(from.message),
      FirebaseStorageErrorCodes.quotaExceeded =>
        FirebaseStorageQuotaExceededFailure(from.message),
      FirebaseStorageErrorCodes.unauthenticated =>
        FirebaseStorageUnauthenticatedFailure(from.message),
      FirebaseStorageErrorCodes.unauthorized =>
        FirebaseStorageUnauthorizedFailure(from.message),
      FirebaseStorageErrorCodes.retryLimitExceeded =>
        FirebaseStorageRetryLimitExceededFailure(from.message),
      FirebaseStorageErrorCodes.invalidChecksum =>
        FirebaseStorageInvalidChecksumFailure(from.message),
      FirebaseStorageErrorCodes.canceled =>
        FirebaseStorageCanceledFailure(from.message),
      FirebaseStorageErrorCodes.invalidEventName =>
        FirebaseStorageInvalidEventNameFailure(from.message),
      FirebaseStorageErrorCodes.invalidUrl =>
        FirebaseStorageInvalidUrlFailure(from.message),
      FirebaseStorageErrorCodes.invalidArgument =>
        FirebaseStorageInvalidArgumentFailure(from.message),
      FirebaseStorageErrorCodes.noDefaultBucket =>
        FirebaseStorageNoDefaultBucketFailure(from.message),
      FirebaseStorageErrorCodes.cannotSliceBlob =>
        FirebaseStorageCannotSliceBlobFailure(from.message),
      FirebaseStorageErrorCodes.serverFileWrongSize =>
        FirebaseStorageServerFileWrongSizeFailure(from.message),
      FirebaseStorageErrorCodes.unknown =>
        FirebaseStorageUnknownFailure(from.message),
      _ => FirebaseStorageUnknownFailure(from.message),
    };
  }
}
