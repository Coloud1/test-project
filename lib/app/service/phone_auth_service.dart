import 'dart:async';
import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:test_prj_ivan/app/service/auth_service.dart';
import 'package:test_prj_ivan/app/util/map_firebase_auth_exception.dart';
import 'package:test_prj_ivan/core/arch/domain/entity/common/operation_status.dart';
import 'package:test_prj_ivan/core/arch/domain/entity/common/result.dart';
import 'package:test_prj_ivan/core/arch/logger/app_logger_impl.dart';
import 'package:test_prj_ivan/domain/data_objects/phone_auth_event.dart';
import 'package:test_prj_ivan/domain/entity/failure/general/unknown_failure.dart';
import 'package:test_prj_ivan/domain/params/login/login_params.dart';

class PhoneAuthService {
  final FirebaseAuth _auth;
  final AuthService _authService;
  final StreamController<PhoneAuthEvent> _streamController =
      StreamController.broadcast();

  PhoneAuthService({
    required FirebaseAuth auth,
    required AuthService authService,
  })  : _auth = auth,
        _authService = authService;

  Stream<PhoneAuthEvent> get stream => _streamController.stream;

  Future<Result<OperationStatus>> verifyPhoneNumber(String phoneNumber) async {
    try {
      await _auth.verifyPhoneNumber(
        phoneNumber: phoneNumber,
        // Triggered when an SMS is auto-retrieved or the
        // phone number has been instantly verified. The callback will receive
        // an [PhoneAuthCredential] that can be passed
        // to [signInWithCredential] or [linkWithCredential].
        verificationCompleted: (credentials) {
          if (Platform.isAndroid) {
            _streamController.add(
              PhoneAuthEventVerificationCompleted(
                verificationId: credentials.verificationId,
                codeSms: credentials.smsCode,
                phoneNumber: phoneNumber,
              ),
            );
          }
        },
        // Triggered when an error occurred during phone number
        // verification. A [FirebaseAuthException] is provided when this is
        // triggered.
        verificationFailed: (exception) {
          _streamController.add(
            PhoneAuthEventVerificationFailed(
              failure:
                  MapFirebaseAuthException.mapRawStringToFailure(exception),
              phoneNumber: phoneNumber,
            ),
          );
        },
        // [codeSent] Triggered when an SMS has been sent to the users phone,
        //  and will include a [verificationId] and [forceResendingToken].
        codeSent: (verificationId, forceResendingToken) {
          _streamController.add(
            PhoneAuthEventCodeSent(
              verificationId: verificationId,
              forceResendingToken: forceResendingToken,
              phoneNumber: phoneNumber,
            ),
          );
        },
        // Triggered when SMS auto-retrieval times out and
        // provide a [verificationId]
        codeAutoRetrievalTimeout: (verificationId) {
          _streamController.add(
            PhoneAuthEventCodeTimeout(
              verificationId: verificationId,
              phoneNumber: phoneNumber,
            ),
          );
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

  Future<Result<OperationStatus>> signInWithPhone({
    required String verificationId,
    required String smsCode,
  }) {
    return _authService.signInWith(
      params: LoginParamsPhone(
        verificationId: verificationId,
        smsCode: smsCode,
      ),
    );
  }

  void close() => _streamController.close();
}
