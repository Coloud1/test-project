import 'package:firebase_auth/firebase_auth.dart';
import 'package:test_prj_ivan/app/service/auth_service.dart';
import 'package:test_prj_ivan/app/util/map_firebase_auth_exception.dart';
import 'package:test_prj_ivan/core/arch/domain/entity/common/operation_status.dart';
import 'package:test_prj_ivan/core/arch/domain/entity/common/result.dart';
import 'package:test_prj_ivan/core/arch/logger/app_logger_impl.dart';
import 'package:test_prj_ivan/domain/entity/failure/general/unknown_failure.dart';

class PhoneAuthService {
  final FirebaseAuth _auth;
  final AuthService _authService;

  const PhoneAuthService({
    required FirebaseAuth auth,
    required AuthService authService,
  })  : _auth = auth,
        _authService = authService;

  Future<Result<OperationStatus>> verifyPhoneNumber(String phoneNumber) async {
    try {
      await _auth.verifyPhoneNumber(
        verificationCompleted: (credentials) {
          // Triggered when an SMS is auto-retrieved or the
          // phone number has been instantly verified. The callback will receive an
          // [PhoneAuthCredential] that can be passed to [signInWithCredential] or
          // [linkWithCredential].
        },
        verificationFailed: (exception) {
          // Triggered when an error occurred during phone number
          // verification. A [FirebaseAuthException] is provided when this is
          // triggered.
          //
        },
        codeSent: (verificationId, forceResendingToken) {
          // [codeSent] Triggered when an SMS has been sent to the users phone, and
          // will include a [verificationId] and [forceResendingToken].
        },
        codeAutoRetrievalTimeout: (verificationId) {
          // Triggered when SMS auto-retrieval times out and
          // provide a [verificationId]
        },
      );
      return const Result.success(OperationStatus.success);
    } on FirebaseAuthException catch (e, s) {
      logger.crash(error: e, stackTrace: s, reason: 'verifyPhoneNumber');
      return Result.error(
        failure: MapFirebaseAuthException.mapRawStringToFailure(e),
      );
    } catch (e, s) {
      return Result.error(failure: UnknownFailure(e, s));
    }
  }
}
