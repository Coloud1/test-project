import 'package:freezed_annotation/freezed_annotation.dart';

part 'registration_bloc_models.freezed.dart';

@freezed
class RegistrationBlocEvent with _$RegistrationBlocEvent {
  const factory RegistrationBlocEvent.signUpWithCredentials({
    required String email,
    required String password,
  }) = _RegistrationBlocEventSignUpWithCredentials;

  const factory RegistrationBlocEvent.signUpWithPhone({
    required String phone,
  }) = _RegistrationBlocEventSignUpWithPhone;
}

@freezed
class RegistrationBlocSR with _$RegistrationBlocSR {
  const factory RegistrationBlocSR.navigateToLogin() =
      _RegistrationBlocSRNavigateToLogin;
}

@freezed
class RegistrationBlocScreenState with _$RegistrationBlocScreenState {
  const factory RegistrationBlocScreenState() = _RegistrationBlocScreenState;
}
