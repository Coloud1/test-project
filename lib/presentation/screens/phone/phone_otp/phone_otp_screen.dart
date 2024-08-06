import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:pinput/pinput.dart';
import 'package:test_prj_ivan/app/service/phone_auth_service.dart';
import 'package:test_prj_ivan/app/util/extension/context_extension.dart';
import 'package:test_prj_ivan/app/util/field_focus_util.dart';
import 'package:test_prj_ivan/core/arch/bloc/base_cubit_state.dart';
import 'package:test_prj_ivan/presentation/screens/phone/phone_otp/cubit/phone_otp_cubit_imports.dart';
import 'package:test_prj_ivan/presentation/widgets/custom_app_bar.dart';
import 'package:test_prj_ivan/presentation/widgets/form_column.dart';
import 'package:test_prj_ivan/presentation/widgets/scaffold_wrapper.dart';

class PhoneOtpScreen extends StatefulWidget {
  final String phoneNumber;

  const PhoneOtpScreen({
    required this.phoneNumber,
    super.key,
  });

  @override
  State<PhoneOtpScreen> createState() => _PhoneOtpScreenState();
}

class _PhoneOtpScreenState extends BaseCubitState<PhoneOtpCubitScreenState,
    PhoneOtpCubit, PhoneOtpCubitSR, PhoneOtpScreen> {
  final TextEditingController _pinController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey();

  @override
  PhoneOtpCubit createBloc() => PhoneOtpCubit(
        GetIt.I.get<PhoneAuthService>(),
        phoneNumber: widget.phoneNumber,
      );

  @override
  void onBlocCreated(BuildContext context, PhoneOtpCubit bloc) {
    super.onBlocCreated(context, bloc);
    bloc.sendCode();
  }

  @override
  Widget buildWidget(BuildContext context) {
    const focusedBorderColor = Color.fromRGBO(23, 171, 144, 1);
    const fillColor = Color.fromRGBO(243, 246, 249, 0);
    const borderColor = Color.fromRGBO(23, 171, 144, 0.4);

    final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(19),
        border: Border.all(color: borderColor),
      ),
    );

    return ScaffoldWrapper(
      appBar: CustomAppBar(title: context.tr.loginPhoneNumberOtpTitle),
      extendBodyBehindAppBar: true,
      body: FormColumn(
        key: _formKey,
        children: [
          const Spacer(),
          Center(
            child: Pinput(
              controller: _pinController,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return context.tr.generalValidationErrorFieldIsRequired;
                }

                if (value.length < 6) {
                  return context.tr.generalPhoneNumberOtpCodeLengthError;
                }

                return null;
              },
              length: 6,
              hapticFeedbackType: HapticFeedbackType.lightImpact,
              onCompleted: (pin) {
                debugPrint('onCompleted: $pin');
                _checkAndSendCode(context);
              },
              onChanged: (value) {
                debugPrint('onChanged: $value');
              },
              cursor: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 9),
                    width: 22,
                    height: 1,
                    color: focusedBorderColor,
                  ),
                ],
              ),
              focusedPinTheme: defaultPinTheme.copyWith(
                decoration: defaultPinTheme.decoration!.copyWith(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: focusedBorderColor),
                ),
              ),
              submittedPinTheme: defaultPinTheme.copyWith(
                decoration: defaultPinTheme.decoration!.copyWith(
                  color: fillColor,
                  borderRadius: BorderRadius.circular(19),
                  border: Border.all(color: focusedBorderColor),
                ),
              ),
              errorPinTheme: defaultPinTheme.copyBorderWith(
                border: Border.all(color: Colors.redAccent),
              ),
              onTapOutside: FieldFocusUtil.unfocus,
            ),
          ),
          const Spacer(),
        ],
      ),
      resizeToAvoidBottomInset: false,
      margin: const EdgeInsets.symmetric(horizontal: 16),
      maintainBottomViewPadding: true,
    );
  }

  void _checkAndSendCode(BuildContext context) {
    if (_formKey.currentState?.validate() ?? false) {
      blocOf(context).confirmPhone(_pinController.text);
    }
  }
}
