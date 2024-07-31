import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:test_prj_ivan/app/util/validators/password/email_validator.dart';
import 'package:test_prj_ivan/app/util/validators/password/password_validator.dart';
import 'package:test_prj_ivan/core/arch/bloc/base_block_state.dart';
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
  }

  @override
  Widget buildWidget(BuildContext context) {
    return ScaffoldWrapper(
      appBar: const CustomAppBar(title: 'Registration'),
      safeArea: (top: true, bottom: true),
      maintainBottomViewPadding: true,
      margin: const EdgeInsets.symmetric(horizontal: 16),
      body: FormColumn(
        key: _formKey,
        children: [
          const SizedBox(height: 40),
          CustomTextField(
            controller: _emailController,
            hintText: 'Email',
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
            validator: (email) => _emailValidator.validate(
              context,
              value: email,
            ),
          ),
          const SizedBox(height: 30),
          CustomTextField(
            useObscure: true,
            controller: _passwordController,
            hintText: 'Password',
            keyboardType: TextInputType.visiblePassword,
            validator: (password) => _passwordValidator.validate(
              context,
              value: password,
            ),
          ),
          const SizedBox(height: 40),
          ElevatedButton(
            onPressed: () => _onCreateAccount(context),
            child: const Text('Create account'),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _onCreateAccount(BuildContext context) {
    blocOf(context).add(
      RegistrationBlocEvent.signUpWithCredentials(
        email: _emailController.text,
        password: _passwordController.text,
      ),
    );
  }

  void _onSR(BuildContext context, RegistrationBlocSR sr) {
    sr.when(navigateToLogin: () => context.pop());
  }
}
