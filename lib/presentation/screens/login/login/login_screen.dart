import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:test_prj_ivan/app/router/app_router.dart';
import 'package:test_prj_ivan/app/util/validators/password/email_validator.dart';
import 'package:test_prj_ivan/app/util/validators/password/password_validator.dart';
import 'package:test_prj_ivan/core/arch/bloc/base_block_state.dart';
import 'package:test_prj_ivan/core/arch/domain/entity/failure/failure.dart';
import 'package:test_prj_ivan/domain/entity/failure/registration_failure/registration_failure.dart';
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
      appBar: const CustomAppBar(title: 'Login'),
      maintainBottomViewPadding: true,
      safeArea: (top: true, bottom: true),
      margin: const EdgeInsets.symmetric(horizontal: 16),
      body: FormColumn(
        key: _formKey,
        children: [
          const SizedBox(height: 40),
          CustomTextField(
            controller: _emailController,
            hintText: 'Email',
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
            hintText: 'Password',
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
            child: const Text('Login'),
          ),
          ElevatedButton(
            onPressed: () => _onRegistration(context),
            child: const Text('Create account'),
          ),
          ElevatedButton(
            onPressed: () => _loginWithAppleId(context),
            child: const Text('Apple Id'),
          ),
          ElevatedButton(
            onPressed: () => _loginWithGoogle(context),
            child: const Text('Google'),
          ),
          ElevatedButton(
            onPressed: () => _loginWithGithub(context),
            child: const Text('Github'),
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
    context.pushNamed(AppRouter.registrationRoute);
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
    if (failure is FirebaseFailure) {
      showDialog(
        context: context,
        builder: (context) => Dialog(
          child: Text('Error $failure'),
        ),
      );
    }
  }
}
