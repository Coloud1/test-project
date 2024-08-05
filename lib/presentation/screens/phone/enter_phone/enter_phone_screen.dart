import 'package:flutter/material.dart';
import 'package:test_prj_ivan/presentation/widgets/custom_app_bar.dart';
import 'package:test_prj_ivan/presentation/widgets/custom_textfield/custom_textfield.dart';
import 'package:test_prj_ivan/presentation/widgets/form_column.dart';
import 'package:test_prj_ivan/presentation/widgets/scaffold_wrapper.dart';

class EnterPhoneScreen extends StatefulWidget {
  const EnterPhoneScreen({super.key});

  @override
  State<EnterPhoneScreen> createState() => _EnterPhoneScreenState();
}

class _EnterPhoneScreenState extends State<EnterPhoneScreen> {
  final TextEditingController _phoneController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return ScaffoldWrapper(
      appBar: const CustomAppBar(title: 'Phone'),
      maintainBottomViewPadding: true,
      margin: const EdgeInsets.symmetric(horizontal: 16),
      safeArea: (top: true, bottom: true),
      body: FormColumn(
        key: _formKey,
        children: [
          SizedBox(height: 40),
          CustomTextField(
            controller: _phoneController,
          ),
          const Spacer(),
          ElevatedButton(
            onPressed: () => _sendSMS(context),
            child: Text('Send SMS'),
          ),
          SizedBox(height: 40),
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
      // TODO(Ivan Modlo): Implement it);
    }
  }
}
