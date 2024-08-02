import 'dart:io';

import 'package:flutter/material.dart';
import 'package:test_prj_ivan/presentation/widgets/custom_dialog/dialog_button_settings.dart';

class CustomAdaptiveDialog extends StatelessWidget {
  static void show(
    BuildContext context, {
    required String title,
    required String content,
    required List<DialogButtonSettings> buttons,
  }) =>
      showAdaptiveDialog(
        context: context,
        builder: (context) {
          return CustomAdaptiveDialog(
            title: title,
            content: content,
            buttons: buttons,
          );
        },
      );

  final String title;
  final String content;
  final List<DialogButtonSettings> buttons;

  const CustomAdaptiveDialog({
    required this.title,
    required this.buttons,
    this.content = '',
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog.adaptive(
      title: Text(title),
      content: content.isNotEmpty ? Text(content) : null,
      actions: [
        if (Platform.isIOS)
          ...buttons.map((e) => e.convertToIosButton(context))
        else
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children:
                buttons.map((e) => e.convertToIosButton(context)).toList(),
          ),
      ],
    );
  }
}
