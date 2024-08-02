import 'package:flutter/cupertino.dart';
import 'package:test_prj_ivan/presentation/widgets/custom_dialog/custom_adaptive_dialog.dart';
import 'package:test_prj_ivan/presentation/widgets/custom_dialog/dialog_button_settings.dart';

class AppDialogUtil {
  static void showOkDialog(
    BuildContext context, {
    required String title,
    String content = '',
  }) =>
      CustomAdaptiveDialog.show(
        context,
        title: title,
        content: content,
        buttons: [
          DialogButtonSettings(
            label: 'OK',
            onTap: () {},
          ),
        ],
      );

  const AppDialogUtil._();
}
