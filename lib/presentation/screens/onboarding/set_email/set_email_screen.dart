import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get_it/get_it.dart';
import 'package:test_prj_ivan/app/util/validators/email_validator.dart';
import 'package:test_prj_ivan/core/arch/bloc/base_cubit_state.dart';
import 'package:test_prj_ivan/domain/usecase/user/firebase_logout_use_case.dart';
import 'package:test_prj_ivan/presentation/screens/onboarding/set_email/cubit/set_email_cubit_imports.dart';
import 'package:test_prj_ivan/presentation/widgets/custom_app_bar.dart';
import 'package:test_prj_ivan/presentation/widgets/custom_textfield/custom_textfield.dart';
import 'package:test_prj_ivan/presentation/widgets/scaffold_wrapper.dart';

class SetEmailScreen extends StatefulWidget {
  const SetEmailScreen({super.key});

  @override
  State<SetEmailScreen> createState() => _SetEmailScreenState();
}

class _SetEmailScreenState extends BaseCubitState<SetEmailCubitScreenState,
    SetEmailCubit, SetEmailCubitSR, SetEmailScreen> {
  final TextEditingController _emailController = TextEditingController();
  final EmailValidator _emailValidator = const EmailValidator();

  @override
  SetEmailCubit createCubit() => SetEmailCubit(
        GetIt.I.get<FirebaseLogoutUseCase>(),
      );

  @override
  void onCubitCreated(BuildContext context, SetEmailCubit cubit) {
    super.onCubitCreated(context, cubit);
    // TODO(Ivan Modlo): Add Loader error here
  }

  @override
  Widget buildWidget(BuildContext context) {
    return ScaffoldWrapper(
      appBar: CustomAppBar(
        title: 'Set email',
        actions: [
          IconButton(
            onPressed: () => _makeLogOut(context),
            icon: const Icon(Icons.logout),
          ),
        ],
      ),
      safeArea: (top: true, bottom: true),
      maintainBottomViewPadding: true,
      margin: const EdgeInsets.symmetric(horizontal: 16),
      body: Column(
        children: [
          const SizedBox(height: 40),
          CustomTextField(
            controller: _emailController,
            hintText: 'Email',
            autocorrect: false,
            enableSuggestions: false,
            keyboardType: TextInputType.emailAddress,
            validator: (email) =>
                _emailValidator.validate(context, value: email),
            inputFormatters: [FilteringTextInputFormatter.deny(' ')],
          ),
          const Spacer(),
          ElevatedButton(
            onPressed: () => _verifyEmailAddress(context),
            child: const Text('Verify email'),
          ),
          const SizedBox(height: 100),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  void _makeLogOut(BuildContext context) => cubitOf(context).logout();

  void _verifyEmailAddress(BuildContext context) =>
      cubitOf(context).checkEmail();
}
