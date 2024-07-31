import 'package:flutter/material.dart';

import 'package:theme_tailor_annotation/theme_tailor_annotation.dart';

import 'package:test_prj_ivan/presentation/style/app_colors.dart';

part 'theme_colors.tailor.dart';

@TailorMixin(themeGetter: ThemeGetter.onBuildContext)
class ThemeColors extends ThemeExtension<ThemeColors>
    with _$ThemeColorsTailorMixin {
  @override
  final Color buttonColor;
  @override
  final Color buttonDisabledColor;
  @override
  final Color scaffoldBackgroundColor;
  @override
  final Color textColor;
  ThemeColors({
    required this.buttonColor,
    required this.buttonDisabledColor,
    required this.scaffoldBackgroundColor,
    required this.textColor,
  });
  factory ThemeColors.light() => ThemeColors(
        buttonColor: AppColors.buttonLight,
        buttonDisabledColor: AppColors.buttonDisabledLight,
        scaffoldBackgroundColor: AppColors.scaffoldBackgroundLight,
        textColor: AppColors.textLight,
      );
  factory ThemeColors.dark() => ThemeColors(
        buttonColor: AppColors.buttonDark,
        buttonDisabledColor: AppColors.buttonDisabledDark,
        scaffoldBackgroundColor: AppColors.scaffoldBackgroundDark,
        textColor: AppColors.textDark,
      );
}
