import 'package:flutter/material.dart';
import 'package:test_prj_ivan/app/util/extension/context_extension.dart';
import 'package:test_prj_ivan/app/util/validators/base_validator.dart';

class DisplayNameValidator implements BaseValidator {
  const DisplayNameValidator();

  @override
  String? validate(BuildContext context, {required String? value}) {
    if (value == null || value.trim().isEmpty) {
      return context.tr.generalValidationFieldIsRequiredError;
    }

    return null;
  }
}
