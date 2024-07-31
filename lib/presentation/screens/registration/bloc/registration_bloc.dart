import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_prj_ivan/core/arch/bloc/base_bloc.dart';
import 'package:test_prj_ivan/domain/usecase/create_account_with_credentials_use_case.dart';
import 'package:test_prj_ivan/presentation/screens/registration/bloc/registration_bloc_imports.dart';

class RegistrationBloc extends BaseBloc<RegistrationBlocEvent,
    RegistrationBlocScreenState, RegistrationBlocSR> {
  final CreateAccountWithCredentialsUseCase
      _createAccountWithCredentialsUseCase;

  RegistrationBloc(this._createAccountWithCredentialsUseCase)
      : super(const RegistrationBlocScreenState()) {
    on<RegistrationBlocEvent>(
      (event, emit) => event.when(
        signUpWithCredentials: (email, password) =>
            _onSignUpWithCredentials(email, password, emit),
        signUpWithPhone: (phone) => _onSignUpWithPhone(phone, emit),
      ),
    );
  }

  Future<void> _onSignUpWithCredentials(
    String email,
    String password,
    Emitter<RegistrationBlocScreenState> emit,
  ) async {
    showProgress();

    final result = await _createAccountWithCredentialsUseCase(
      email: email,
      password: password,
    );

    result.when(
      success: (_) {
        addSr(const RegistrationBlocSR.navigateToLogin());
      },
      error: (failure) {
        onFailure(failure);
      },
    );

    await hideProgress();
  }

  Future<void> _onSignUpWithPhone(
    String phone,
    Emitter<RegistrationBlocScreenState> emit,
  ) async {}
}
