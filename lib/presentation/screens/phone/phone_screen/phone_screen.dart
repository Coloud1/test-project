import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:test_prj_ivan/app/router/app_router.dart';
import 'package:test_prj_ivan/core/arch/bloc/base_cubit_state.dart';
import 'package:test_prj_ivan/presentation/screens/phone/phone_screen/cubit/phone_screen_imports.dart';
import 'package:test_prj_ivan/presentation/widgets/custom_app_bar.dart';
import 'package:test_prj_ivan/presentation/widgets/custom_textfield/custom_textfield.dart';
import 'package:test_prj_ivan/presentation/widgets/form_column.dart';
import 'package:test_prj_ivan/presentation/widgets/scaffold_wrapper.dart';

class PhoneScreen extends StatefulWidget {
  const PhoneScreen({super.key});

  @override
  State<PhoneScreen> createState() => _PhoneScreenState();
}

class _PhoneScreenState extends BaseCubitState<PhoneScreenCubitState,
    PhoneScreenCubit, PhoneScreenCubitSR, PhoneScreen> {
  final TextEditingController _phoneController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey();

  @override
  PhoneScreenCubit createBloc() => PhoneScreenCubit();

  @override
  void onBlocCreated(BuildContext context, PhoneScreenCubit bloc) {
    super.onBlocCreated(context, bloc);
    bloc.singleResults.listen((sr) => _onSR(context, sr));
  }

  @override
  Widget buildWidget(BuildContext context) {
    return ScaffoldWrapper(
      appBar: const CustomAppBar(title: 'Phone'),
      maintainBottomViewPadding: true,
      margin: const EdgeInsets.symmetric(horizontal: 16),
      safeArea: (top: true, bottom: true),
      body: FormColumn(
        key: _formKey,
        children: [
          const SizedBox(height: 40),
          CustomTextField(
            controller: _phoneController,
            hintText: 'Phone Number',
            keyboardType: TextInputType.phone,
            validator: (phone) {
              if (phone == null || phone.isEmpty) {
                return 'Field is required';
              }

              if (!RegExp(r'^\+?\d*$').hasMatch(phone)) {
                return 'Phone number is invalid';
              }

              return null;
            },
          ),
          const Spacer(),
          ElevatedButton(
            onPressed: () => _sendSMS(context),
            child: const Text('Send SMS'),
          ),
          const SizedBox(height: 100),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _phoneController.dispose();
    super.dispose();
  }

  void _sendSMS(BuildContext context) {
    if (_formKey.currentState?.validate() ?? false) {
      blocOf(context).saveLastEnteredPhone(_phoneController.text);
    }
  }

  void _onSR(BuildContext context, PhoneScreenCubitSR sr) {
    sr.when(
      navigateToOTP: (phone) =>
          context.pushNamed(AppRouter.loginPhoneOtpRoute, extra: phone),
    );
  }
}
