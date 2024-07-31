import 'package:flutter/cupertino.dart';

abstract interface class BaseValidator {
  const BaseValidator();

  String? validate(BuildContext context, {required String? value});
}
