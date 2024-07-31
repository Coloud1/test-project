import 'package:flutter/material.dart';

import 'package:test_prj_ivan/presentation/style/theme/theme_imports.dart';

ThemeData createLightTheme() {
  return ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: AppColors.scaffoldBackgroundLight,
    extensions: [
      ThemeColors.light(),
      ThemeTextStyles.light(),
    ],
    dialogTheme:
        const DialogTheme(backgroundColor: AppColors.scaffoldBackgroundLight),
  );
}
