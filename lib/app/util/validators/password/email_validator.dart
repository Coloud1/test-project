import 'package:flutter/material.dart';
import 'package:test_prj_ivan/app/util/constants.dart';
import 'package:test_prj_ivan/app/util/validators/base_validator.dart';

class EmailValidator implements BaseValidator {
  const EmailValidator();

  @override
  String? validate(BuildContext context, {required String? value}) {
    if (value == null || value.isEmpty) {
      return 'Email is required';
    }

    if (!Constants.emailRegExp.hasMatch(value)) {
      return "Email isn't valid";
    }

    return null;
  }
}
