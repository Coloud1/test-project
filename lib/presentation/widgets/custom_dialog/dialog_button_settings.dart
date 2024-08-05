import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DialogButtonSettings {
  final String label;
  final VoidCallback? onTap;

  const DialogButtonSettings({
    required this.label,
    required this.onTap,
  });
}

extension DialogButtonSettingsExt on DialogButtonSettings {
  Widget convertToMaterialButton(BuildContext context) => TextButton(
        onPressed: onTap != null
            ? () {
                onTap?.call();
                Navigator.pop(context);
              }
            : null,
        child: Text(label),
      );

  Widget convertToIosButton(BuildContext context) => CupertinoDialogAction(
        onPressed: onTap != null
            ? () {
                onTap?.call();
                Navigator.pop(context);
              }
            : null,
        child: Text(label),
      );
}
