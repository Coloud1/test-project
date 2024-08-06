import 'dart:async';

import 'package:test_prj_ivan/app/service/phone_auth_service.dart';
import 'package:test_prj_ivan/core/arch/bloc/base_cubit.dart';
import 'package:test_prj_ivan/domain/data_objects/phone_auth_event.dart';
import 'package:test_prj_ivan/presentation/screens/phone/phone_otp/cubit/phone_otp_cubit_imports.dart';

class PhoneOtpCubit
    extends BaseCubit<PhoneOtpCubitScreenState, PhoneOtpCubitSR> {
  final PhoneAuthService _phoneAuthService;
  StreamSubscription? _subscription;

  PhoneOtpCubit(
    this._phoneAuthService, {
    required String phoneNumber,
  }) : super(
          PhoneOtpCubitScreenState(
            phoneNumber: phoneNumber,
            verificationId: '',
          ),
        ) {
    _init();
  }

  void _init() {
    _subscription = _phoneAuthService.stream.listen((event) {
      switch (event) {
        case PhoneAuthEventVerificationCompleted():
          _onVerificationCompleted(event);
        case PhoneAuthEventVerificationFailed():
          _onVerificationFailed(event);
        case PhoneAuthEventCodeSent():
          _onCodeSent(event);
        case PhoneAuthEventCodeTimeout():
          _onCodeTimeout(event);
      }
    });
  }

  Future<void> sendCode() async {
    final result = await _phoneAuthService.verifyPhoneNumber(state.phoneNumber);
    result.whenOrNull(error: onFailure);
  }

  Future<void> confirmPhone(String code) async {
    if (code.isEmpty || state.verificationId.isEmpty) return;

    showProgress();

    final result = await _phoneAuthService.signInWithPhone(
      verificationId: state.verificationId,
      smsCode: code,
    );

    result.when(
      success: (_) {},
      error: (failure) {
        onFailure(failure);
      },
    );

    await hideProgress();
  }

  void _onVerificationCompleted(PhoneAuthEventVerificationCompleted event) {
    final code = event.codeSms;
    final id = event.verificationId;

    emit(state.copyWith(verificationId: id ?? ''));

    if (code != null && id != null) {
      confirmPhone(code);
    }
  }

  void _onVerificationFailed(PhoneAuthEventVerificationFailed event) {
    onFailure(event.failure);
  }

  void _onCodeSent(PhoneAuthEventCodeSent event) {
    if (event.phoneNumber == state.phoneNumber) {
      emit(state.copyWith(verificationId: event.verificationId));
    }
  }

  void _onCodeTimeout(PhoneAuthEventCodeTimeout event) {
    if (event.phoneNumber == state.phoneNumber) {
      emit(state.copyWith(verificationId: event.verificationId));
    }
  }

  @override
  Future<void> close() {
    _subscription?.cancel();
    return super.close();
  }
}
