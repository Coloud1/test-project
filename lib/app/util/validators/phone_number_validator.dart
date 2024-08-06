import 'package:flutter/material.dart';
import 'package:test_prj_ivan/app/util/constants.dart';
import 'package:test_prj_ivan/app/util/extension/context_extension.dart';
import 'package:test_prj_ivan/app/util/validators/base_validator.dart';

class PhoneNumberValidator implements BaseValidator {
  @override
  String? validate(BuildContext context, {required String? value}) {
    if (value == null || value.isEmpty) {
      return context.tr.generalValidationFieldIsRequiredError;
    }

    if (!Constants.phoneNumberRegExp.hasMatch(value)) {
      return context.tr.generalValidationPhoneNumberIsNotValidError;
    }

    return null;
  }
}
