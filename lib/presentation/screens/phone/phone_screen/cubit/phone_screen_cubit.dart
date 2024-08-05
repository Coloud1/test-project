import 'package:test_prj_ivan/core/arch/bloc/base_cubit.dart';
import 'package:test_prj_ivan/presentation/screens/phone/phone_screen/cubit/phone_screen_imports.dart';

class PhoneScreenCubit
    extends BaseCubit<PhoneScreenCubitState, PhoneScreenCubitSR> {
  PhoneScreenCubit() : super(const PhoneScreenCubitState(lastEnteredPhone: ''));

  void saveLastEnteredPhone(String phone) {
    emit(state.copyWith(lastEnteredPhone: phone));
    addSr(PhoneScreenCubitSR.navigateToOTP(phoneNumber: phone));
  }
}
