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
  }

  String? validateBothPasswords(
    BuildContext context, {
    required bool isConfirmPassword,
    required String? currentPassword,
    required String? confirmPassword,
  }) {
    final currentPasswordError = validate(context, value: currentPassword);
    final confirmPasswordError = validate(context, value: confirmPassword);

    if (currentPasswordError != null && !isConfirmPassword) {
      return currentPasswordError;
    }

    if (confirmPasswordError != null && isConfirmPassword) {
      return confirmPasswordError;
    }

    if (currentPassword != confirmPassword) {
      return isConfirmPassword ? 'Passwords need to match' : '';
    }

    return null;
  }
}
