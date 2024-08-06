import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:test_prj_ivan/app/router/app_router.dart';
import 'package:test_prj_ivan/app/util/extension/context_extension.dart';
import 'package:test_prj_ivan/app/util/validators/base_validator.dart';
import 'package:test_prj_ivan/app/util/validators/phone_number_validator.dart';
import 'package:test_prj_ivan/presentation/widgets/custom_app_bar.dart';
import 'package:test_prj_ivan/presentation/widgets/custom_textfield/custom_textfield.dart';
import 'package:test_prj_ivan/presentation/widgets/form_column.dart';
import 'package:test_prj_ivan/presentation/widgets/scaffold_wrapper.dart';

class PhoneScreen extends StatefulWidget {
  const PhoneScreen({super.key});

  @override
  State<PhoneScreen> createState() => _PhoneScreenState();
}

class _PhoneScreenState extends State<PhoneScreen> {
  final TextEditingController _phoneController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey();
  final BaseValidator _phoneValidator = PhoneNumberValidator();

  @override
  Widget build(BuildContext context) {
    return ScaffoldWrapper(
      appBar: CustomAppBar(title: context.tr.loginPhoneAppBarTitle),
      maintainBottomViewPadding: true,
      margin: const EdgeInsets.symmetric(horizontal: 16),
      safeArea: (top: true, bottom: true),
      body: FormColumn(
        key: _formKey,
        children: [
          const SizedBox(height: 40),
          CustomTextField(
            controller: _phoneController,
            hintText: context.tr.loginPhoneNumberField,
            keyboardType: TextInputType.phone,
            validator: (phone) => _phoneValidator.validate(
              context,
              value: phone,
            ),
          ),
          const Spacer(),
          ElevatedButton(
            onPressed: () => _sendSMS(context),
            child: Text(context.tr.loginPhoneSendSMSButtonLabel),
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
      context.pushNamed(
        AppRouter.loginPhoneOtpRoute,
        extra: _phoneController.text,
      );
    }
  }
}
