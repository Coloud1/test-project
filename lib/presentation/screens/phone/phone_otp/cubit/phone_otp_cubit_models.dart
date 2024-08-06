import 'package:freezed_annotation/freezed_annotation.dart';

part 'phone_otp_cubit_models.freezed.dart';

@freezed
class PhoneOtpCubitScreenState with _$PhoneOtpCubitScreenState {
  const factory PhoneOtpCubitScreenState({
    required String phoneNumber,
    required String verificationId,
  }) = _PhoneOtpCubitScreenState;
}

@freezed
class PhoneOtpCubitSR with _$PhoneOtpCubitSR {
  const factory PhoneOtpCubitSR.onSR() = _PhoneOtpCubitSR;
}
