import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:test_prj_ivan/app/util/extension/context_extension.dart';
import 'package:test_prj_ivan/app/util/firebase_auth_dialog_util.dart';
import 'package:test_prj_ivan/app/util/validators/email_validator.dart';
import 'package:test_prj_ivan/app/util/validators/password_validator.dart';
import 'package:test_prj_ivan/core/arch/bloc/base_bloc_state.dart';
import 'package:test_prj_ivan/core/arch/domain/entity/failure/failure.dart';
import 'package:test_prj_ivan/domain/entity/failure/firebase/firebase_auth_failure.dart';
import 'package:test_prj_ivan/domain/usecase/create_account_with_credentials_use_case.dart';
import 'package:test_prj_ivan/presentation/screens/registration/bloc/registration_bloc_imports.dart';
import 'package:test_prj_ivan/presentation/widgets/custom_app_bar.dart';
import 'package:test_prj_ivan/presentation/widgets/custom_textfield/custom_textfield.dart';
import 'package:test_prj_ivan/presentation/widgets/form_column.dart';
import 'package:test_prj_ivan/presentation/widgets/scaffold_wrapper.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends BaseState<RegistrationBlocScreenState,
    RegistrationBloc, RegistrationBlocSR, RegistrationScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey();
  final EmailValidator _emailValidator = const EmailValidator();
  final PasswordValidator _passwordValidator = const PasswordValidator(6);

  @override
  RegistrationBloc createBloc() => RegistrationBloc(
        GetIt.I.get<CreateAccountWithCredentialsUseCase>(),
      );

  @override
  void onBlocCreated(BuildContext context, RegistrationBloc bloc) {
    super.onBlocCreated(context, bloc);
    bloc.singleResults.listen((sr) => _onSR(context, sr));
    bloc.failureStream.listen((failure) => _onFailure(context, failure));
  }

  @override
  Widget buildWidget(BuildContext context) {
    return ScaffoldWrapper(
      appBar: CustomAppBar(title: context.tr.registrationAppBarTitle),
      safeArea: (top: true, bottom: true),
      maintainBottomViewPadding: true,
      margin: const EdgeInsets.symmetric(horizontal: 16),
      body: FormColumn(
        key: _formKey,
        children: [
          const SizedBox(height: 40),
          CustomTextField(
            autocorrect: false,
            enableSuggestions: false,
            controller: _emailController,
            hintText: context.tr.registrationEmailFieldLabel,
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
            validator: (email) => _emailValidator.validate(
              context,
              value: email,
            ),
          ),
          const SizedBox(height: 20),
          CustomTextField(
            useObscure: true,
            controller: _passwordController,
            hintText: context.tr.registrationPasswordFieldLabel,
            keyboardType: TextInputType.visiblePassword,
            validator: (password) => _passwordValidator.validateBothPasswords(
              context,
              currentPassword: password,
              confirmPassword: _confirmPasswordController.text,
              isConfirmPassword: false,
            ),
          ),
          const SizedBox(height: 20),
          CustomTextField(
            controller: _confirmPasswordController,
            hintText: context.tr.registrationConfirmPasswordFieldLabel,
            autocorrect: false,
            enableSuggestions: false,
            keyboardType: TextInputType.visiblePassword,
            validator: (password) => _passwordValidator.validateBothPasswords(
              context,
              currentPassword: _passwordController.text,
              confirmPassword: password,
              isConfirmPassword: true,
            ),
            inputFormatters: [FilteringTextInputFormatter.deny(' ')],
            useObscure: true,
          ),
          const Spacer(),
          ElevatedButton(
            onPressed: () => _onCreateAccount(context),
            child: Text(context.tr.registrationCreateAccountButtonLabel),
          ),
          const SizedBox(height: 100),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  void _onCreateAccount(BuildContext context) {
    if (_formKey.currentState?.validate() ?? false) {
      blocOf(context).add(
        RegistrationBlocEvent.signUpWithCredentials(
          email: _emailController.text,
          password: _passwordController.text,
        ),
      );
    }
  }

  void _onSR(BuildContext context, RegistrationBlocSR sr) {
    sr.when(navigateToLogin: () => context.pop());
  }

  void _onFailure(BuildContext context, Failure failure) {
    if (failure is FirebaseAuthFailure) {
      FirebaseAuthDialogUtil.showFirebaseAuthFailure(context, failure: failure);
    }
  }
}
