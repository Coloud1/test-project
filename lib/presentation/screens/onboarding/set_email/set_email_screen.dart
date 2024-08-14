import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:test_prj_ivan/app/router/app_route.dart';
import 'package:test_prj_ivan/app/util/app_dialog_util.dart';
import 'package:test_prj_ivan/app/util/extension/context_extension.dart';
import 'package:test_prj_ivan/app/util/firebase_auth_dialog_util.dart';
import 'package:test_prj_ivan/app/util/validators/email_validator.dart';
import 'package:test_prj_ivan/app/util/validators/password_validator.dart';
import 'package:test_prj_ivan/core/arch/bloc/base_cubit_state.dart';
import 'package:test_prj_ivan/domain/entity/failure/firebase/firebase_auth_failure.dart';
import 'package:test_prj_ivan/domain/usecase/user/firebase_logout_use_case.dart';
import 'package:test_prj_ivan/domain/usecase/user_provider_data/link_account_with_credentials_use_case.dart';
import 'package:test_prj_ivan/presentation/screens/onboarding/set_email/cubit/set_email_cubit_imports.dart';
import 'package:test_prj_ivan/presentation/widgets/custom_app_bar.dart';
import 'package:test_prj_ivan/presentation/widgets/custom_textfield/custom_textfield.dart';
import 'package:test_prj_ivan/presentation/widgets/form_column.dart';
import 'package:test_prj_ivan/presentation/widgets/scaffold_wrapper.dart';

class SetEmailScreen extends StatefulWidget {
  const SetEmailScreen({super.key});

  @override
  State<SetEmailScreen> createState() => _SetEmailScreenState();
}

class _SetEmailScreenState extends BaseCubitState<SetEmailCubitScreenState,
    SetEmailCubit, SetEmailCubitSR, SetEmailScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();
  final EmailValidator _emailValidator = const EmailValidator();
  final PasswordValidator _passwordValidator = const PasswordValidator(6);
  final GlobalKey<FormState> _formKey = GlobalKey();

  @override
  SetEmailCubit createCubit() => SetEmailCubit(
        GetIt.I.get<FirebaseLogoutUseCase>(),
        GetIt.I.get<LinkAccountWithCredentialsUseCase>(),
      );

  @override
  void onCubitCreated(BuildContext context, SetEmailCubit cubit) {
    super.onCubitCreated(context, cubit);
    cubit.failureStream.listen((event) {
      if (event is FirebaseAuthFailure) {
        FirebaseAuthDialogUtil.showFirebaseAuthFailure(context, failure: event);
      } else {
        AppDialogUtil.showOkDialog(
          context,
          title: context.tr.generalErrorTitleOopsSomethingWentWrong,
        );
      }
    });

    cubit.singleResults.listen((sr) => _onSR(context, sr));
  }

  @override
  Widget buildWidget(BuildContext context) {
    return ScaffoldWrapper(
      appBar: CustomAppBar(
        title: context.tr.homeSetEmailAppBarTitle,
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
      body: FormColumn(
        key: _formKey,
        children: [
          const SizedBox(height: 40),
          CustomTextField(
            controller: _emailController,
            hintText: context.tr.homeSetEmailTextFieldEmailLabel,
            autocorrect: false,
            enableSuggestions: false,
            keyboardType: TextInputType.emailAddress,
            validator: (email) =>
                _emailValidator.validate(context, value: email),
            inputFormatters: [FilteringTextInputFormatter.deny(' ')],
          ),
          const SizedBox(height: 20),
          CustomTextField(
            controller: _passwordController,
            hintText: context.tr.homeSetEmailTextFieldPasswordLabel,
            autocorrect: false,
            enableSuggestions: false,
            keyboardType: TextInputType.visiblePassword,
            validator: (password) => _passwordValidator.validateBothPasswords(
              context,
              currentPassword: password,
              confirmPassword: _confirmPasswordController.text,
              isConfirmPassword: false,
            ),
            inputFormatters: [FilteringTextInputFormatter.deny(' ')],
            useObscure: true,
          ),
          const SizedBox(height: 20),
          CustomTextField(
            controller: _confirmPasswordController,
            hintText: context.tr.homeSetEmailTextFieldConfirmPasswordLabel,
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
            onPressed: () => _verifyEmailAddress(context),
            child: Text(context.tr.homeSetEmailVerifyButtonLabel),
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

  void _verifyEmailAddress(BuildContext context) {
    if (_formKey.currentState?.validate() ?? false) {
      cubitOf(context).checkEmail(
        email: _emailController.text,
        password: _passwordController.text,
      );
    }
  }

  void _onSR(BuildContext context, SetEmailCubitSR sr) {
    sr.when(navigateNext: () => context.goNamed(AppRoute.home.name));
  }
}
