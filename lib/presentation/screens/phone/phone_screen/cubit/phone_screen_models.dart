import 'package:freezed_annotation/freezed_annotation.dart';

part 'phone_screen_models.freezed.dart';

@freezed
class PhoneScreenCubitState with _$PhoneScreenCubitState {
  const factory PhoneScreenCubitState({
    required String lastEnteredPhone,
  }) = _PhoneScreenCubitState;
}

@freezed
class PhoneScreenCubitSR with _$PhoneScreenCubitSR {
  const factory PhoneScreenCubitSR.navigateToOTP({
    required String phoneNumber,
  }) = _PhoneScreenCubitSRNavigateToOtp;
}
