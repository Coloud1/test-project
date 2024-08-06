import 'package:flutter/material.dart';
import 'package:test_prj_ivan/app/util/extension/context_extension.dart';
import 'package:test_prj_ivan/app/util/validators/base_validator.dart';

class PasswordValidator implements BaseValidator {
  final int minLength;

  const PasswordValidator(this.minLength);

  @override
  String? validate(BuildContext context, {required String? value}) {
    if (value == null || value.isEmpty) {
      return context.tr.generalValidationFieldIsRequiredError;
    }

    if (value.length < minLength) {
      return context.tr.generalValidationLengthError(minLength);
    }

    return null;

    // if (!Constants.passwordUpperCaseRegExp.hasMatch(value)) {
    //   return 'Password must contain at least one uppercase character';
    // }
    //
    // if (!Constants.passwordLowerCaseRegExp.hasMatch(value)) {
    //   return 'Password must contain at least one lowercase character';
    // }
    //
    // if (!Constants.passwordSpecialCharactersRegExp.hasMatch(value)) {
    //   return 'Password must contain at least one special symbol';
    // }
    //
    // return null;
  }
}
