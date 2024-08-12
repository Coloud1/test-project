import 'package:test_prj_ivan/core/arch/bloc/base_cubit.dart';
import 'package:test_prj_ivan/domain/usecase/user/firebase_logout_use_case.dart';
import 'package:test_prj_ivan/presentation/screens/onboarding/set_email/cubit/set_email_cubit_imports.dart';

class SetEmailCubit
    extends BaseCubit<SetEmailCubitScreenState, SetEmailCubitSR> {
  final FirebaseLogoutUseCase _firebaseLogoutUseCase;

  SetEmailCubit(this._firebaseLogoutUseCase)
      : super(const SetEmailCubitScreenState());

  Future<void> logout() async {
    await _firebaseLogoutUseCase();
  }
}
