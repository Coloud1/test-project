import 'package:test_prj_ivan/core/arch/bloc/base_cubit.dart';
import 'package:test_prj_ivan/presentation/screens/onboarding/set_email/cubit/set_email_cubit_imports.dart';

class SetEmailCubit
    extends BaseCubit<SetEmailCubitScreenState, SetEmailCubitSR> {
  SetEmailCubit() : super(const SetEmailCubitScreenState());
}
