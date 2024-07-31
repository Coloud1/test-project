import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_bloc_models.freezed.dart';

@freezed
class LoginBlocEvent with _$LoginBlocEvent {
  const factory LoginBlocEvent.makeLoginWithEmail({
    required String email,
    required String password,
  }) = _LoginBlocEventMakeLoginWithEmail;

  const factory LoginBlocEvent.makeLoginWithPhone({
    required String phone,
    required String password,
  }) = _LoginBlocEventMakeLoginWithPhone;

  const factory LoginBlocEvent.makeLoginWithApple() =
      _LoginBlocEventMakeLoginWithApple;

  const factory LoginBlocEvent.makeLoginWithGoogle() =
      _LoginBlocEventMakeLoginWithGoogle;

  const factory LoginBlocEvent.makeLoginWithGithub() =
      _LoginBlocEventMakeLoginWithGithub;
}

@freezed
class LoginBlocSR with _$LoginBlocSR {
  const factory LoginBlocSR.showError() = _LoginBlocSRShowError;
}

@freezed
class LoginBlocScreenState with _$LoginBlocScreenState {
  const factory LoginBlocScreenState() = _LoginBlocScreenState;
}
