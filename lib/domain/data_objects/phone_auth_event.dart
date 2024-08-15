import 'package:test_prj_ivan/domain/entity/failure/firebase/firebase_auth_failure.dart';

sealed class PhoneAuthEvent {
  final String phoneNumber;

  const PhoneAuthEvent({required this.phoneNumber});
}

class PhoneAuthEventVerificationCompleted extends PhoneAuthEvent {
  final String? verificationId;
  final String? codeSms;

  const PhoneAuthEventVerificationCompleted({
    required this.verificationId,
    required this.codeSms,
    required super.phoneNumber,
  });
}

class PhoneAuthEventVerificationFailed extends PhoneAuthEvent {
  final FirebaseAuthFailure failure;

  const PhoneAuthEventVerificationFailed({
    required this.failure,
    required super.phoneNumber,
  });
}

class PhoneAuthEventCodeSent extends PhoneAuthEvent {
  final String verificationId;
  final int? forceResendingToken;

  const PhoneAuthEventCodeSent({
    required this.verificationId,
    required this.forceResendingToken,
    required super.phoneNumber,
  });
}

class PhoneAuthEventCodeTimeout extends PhoneAuthEvent {
  final String verificationId;

  const PhoneAuthEventCodeTimeout({
    required this.verificationId,
    required super.phoneNumber,
  });
}
