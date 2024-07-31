import 'package:flutter/cupertino.dart';

class FieldFocusUtil {
  static void unfocus(PointerDownEvent event) =>
      FocusManager.instance.primaryFocus?.unfocus();

  const FieldFocusUtil._();
}
