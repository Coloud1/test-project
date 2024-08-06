import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:test_prj_ivan/app/service/phone_auth_service.dart';
import 'package:test_prj_ivan/app/util/extension/context_extension.dart';
import 'package:test_prj_ivan/core/arch/bloc/base_cubit_state.dart';
import 'package:test_prj_ivan/presentation/screens/phone/phone_otp/cubit/phone_otp_cubit_imports.dart';
import 'package:test_prj_ivan/presentation/widgets/code_widget.dart';
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
    return ScaffoldWrapper(
      appBar: CustomAppBar(title: context.tr.loginPhoneNumberOtpTitle),
      extendBodyBehindAppBar: true,
      body: FormColumn(
        key: _formKey,
        children: [
          const Spacer(),
          Center(
            child: CodeWidget(
              controller: _pinController,
              onCompleted: () => _checkAndSendCode(context),
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
