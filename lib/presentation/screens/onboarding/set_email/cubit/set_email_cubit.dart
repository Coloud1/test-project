import 'package:test_prj_ivan/core/arch/bloc/base_cubit.dart';
import 'package:test_prj_ivan/domain/usecase/user/firebase_logout_use_case.dart';
import 'package:test_prj_ivan/domain/usecase/user_provider_data/link_account_with_credentials_use_case.dart';
import 'package:test_prj_ivan/presentation/screens/onboarding/set_email/cubit/set_email_cubit_imports.dart';

class SetEmailCubit
    extends BaseCubit<SetEmailCubitScreenState, SetEmailCubitSR> {
  final FirebaseLogoutUseCase _firebaseLogoutUseCase;
  final LinkAccountWithCredentialsUseCase _linkAccountWithCredentialsUseCase;

  SetEmailCubit(
    this._firebaseLogoutUseCase,
    this._linkAccountWithCredentialsUseCase,
  ) : super(const SetEmailCubitScreenState());

  Future<void> checkEmail({
    required String email,
    required String password,
  }) async {
    showProgress();

    final result = await _linkAccountWithCredentialsUseCase(
      email: email.trim(),
      password: password.trim(),
    );

    result.when(
      success: (_) {
        addSr(const SetEmailCubitSR.navigateNext());
      },
      error: (failure) {
        onFailure(failure);
      },
    );

    await hideProgress();
  }

  Future<void> logout() async {
    final result = await _firebaseLogoutUseCase();

    result.when(
      success: (_) {},
      error: (failure) {
        onFailure(failure);
      },
    );
  }
}
