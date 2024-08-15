import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:test_prj_ivan/app/router/app_route.dart';
import 'package:test_prj_ivan/app/util/extension/context_extension.dart';
import 'package:test_prj_ivan/app/util/firebase_auth_dialog_util.dart';
import 'package:test_prj_ivan/app/util/validators/email_validator.dart';
import 'package:test_prj_ivan/app/util/validators/password_validator.dart';
import 'package:test_prj_ivan/core/arch/bloc/base_bloc_state.dart';
import 'package:test_prj_ivan/core/arch/domain/entity/failure/failure.dart';
import 'package:test_prj_ivan/domain/entity/failure/firebase/firebase_auth_failure.dart';
import 'package:test_prj_ivan/domain/usecase/make_login_with_use_case.dart';
import 'package:test_prj_ivan/presentation/screens/login/login/bloc/login_bloc.dart';
import 'package:test_prj_ivan/presentation/screens/login/login/bloc/login_bloc_models.dart';
import 'package:test_prj_ivan/presentation/widgets/custom_app_bar.dart';
import 'package:test_prj_ivan/presentation/widgets/custom_textfield/custom_textfield.dart';
import 'package:test_prj_ivan/presentation/widgets/form_column.dart';
import 'package:test_prj_ivan/presentation/widgets/scaffold_wrapper.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends BaseState<LoginBlocScreenState, LoginBloc,
    LoginBlocSR, LoginScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final PasswordValidator _passwordValidator = const PasswordValidator(6);
  final EmailValidator _emailValidator = const EmailValidator();

  @override
  LoginBloc createBloc() => LoginBloc(
        makeLoginWithUsecase: GetIt.I.get<MakeLoginWithUseCase>(),
      );

  @override
  void onBlocCreated(BuildContext context, LoginBloc bloc) {
    super.onBlocCreated(context, bloc);
    bloc.failureStream.listen((failure) => _onFailure(context, failure));
  }

  @override
  Widget buildWidget(BuildContext context) {
    return ScaffoldWrapper(
      appBar: CustomAppBar(title: context.tr.loginAppBarTitle),
      maintainBottomViewPadding: true,
      safeArea: (top: true, bottom: true),
      margin: const EdgeInsets.symmetric(horizontal: 16),
      body: FormColumn(
        key: _formKey,
        children: [
          const SizedBox(height: 40),
          CustomTextField(
            enableSuggestions: false,
            autocorrect: false,
            controller: _emailController,
            hintText: context.tr.loginEmailFieldLabel,
            keyboardType: TextInputType.emailAddress,
            validator: (email) => _emailValidator.validate(
              context,
              value: email,
            ),
            textInputAction: TextInputAction.next,
          ),
          const SizedBox(height: 30),
          CustomTextField(
            controller: _passwordController,
            hintText: context.tr.loginPasswordFieldLabel,
            useObscure: true,
            keyboardType: TextInputType.visiblePassword,
            validator: (password) => _passwordValidator.validate(
              context,
              value: password,
            ),
          ),
          const SizedBox(height: 30),
          ElevatedButton(
            onPressed: () => _onLogin(context),
            child: Text(context.tr.loginCredentialsButtonLabel),
          ),
          ElevatedButton(
            onPressed: () => _onRegistration(context),
            child: Text(context.tr.loginCreateAccountButtonLabel),
          ),
          ElevatedButton(
            onPressed: () => _loginWithAppleId(context),
            child: Text(context.tr.loginAppleIdButtonLabel),
          ),
          ElevatedButton(
            onPressed: () => _loginWithGoogle(context),
            child: Text(context.tr.loginGoogleButtonLabel),
          ),
          ElevatedButton(
            onPressed: () => _loginWithGithub(context),
            child: Text(context.tr.loginGithubButtonLabel),
          ),
          ElevatedButton(
            onPressed: () => _loginWithPhone(context),
            child: const Text('Phone'),
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

  void _onLogin(BuildContext context) {
    if (_formKey.currentState?.validate() ?? false) {
      blocOf(context).add(
        LoginBlocEvent.makeLoginWithEmail(
          email: _emailController.text,
          password: _passwordController.text,
        ),
      );
    }
  }

  void _onRegistration(BuildContext context) {
    context.pushNamed(AppRoute.registration.name);
  }

  void _loginWithAppleId(BuildContext context) {
    blocOf(context).add(const LoginBlocEvent.makeLoginWithApple());
  }

  void _loginWithGoogle(BuildContext context) {
    blocOf(context).add(const LoginBlocEvent.makeLoginWithGoogle());
  }

  void _loginWithGithub(BuildContext context) {
    blocOf(context).add(const LoginBlocEvent.makeLoginWithGithub());
  }

  void _onFailure(BuildContext context, Failure failure) {
    if (failure is FirebaseAuthFailure) {
      FirebaseAuthDialogUtil.showFirebaseAuthFailure(context, failure: failure);
    }
  }

  void _loginWithPhone(BuildContext context) {
    context.pushNamed(AppRoute.loginPhone.name);
  }
}
