import 'package:flutter/cupertino.dart';
import 'package:permission_handler/permission_handler.dart';
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

  static void showDialog(
    BuildContext context, {
    required String title,
    required List<DialogButtonSettings> buttons,
    String content = '',
  }) =>
      CustomAdaptiveDialog.show(
        context,
        title: title,
        content: content,
        buttons: buttons,
      );

  static void showPermissionDialog(BuildContext context) {
    AppDialogUtil.showDialog(
      context,
      title: "You've previously denied permission for this action.",
      content:
          'Would you like to revisit your settings to reconsider your permissions?',
      buttons: [
        const DialogButtonSettings(
          label: 'Go to Settings',
          onTap: openAppSettings,
        ),
        DialogButtonSettings(
          label: 'Cancel',
          onTap: () {},
        ),
      ],
    );
  }

  const AppDialogUtil._();
}
