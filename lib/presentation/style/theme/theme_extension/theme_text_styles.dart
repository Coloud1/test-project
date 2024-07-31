import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:theme_tailor_annotation/theme_tailor_annotation.dart';

import 'package:test_prj_ivan/presentation/style/app_colors.dart';

part 'theme_text_styles.tailor.dart';

@TailorMixin(themeGetter: ThemeGetter.onBuildContext)
class ThemeTextStyles extends ThemeExtension<ThemeTextStyles>
    with _$ThemeTextStylesTailorMixin {
  @override
  final TextStyle button;
  @override
  final TextStyle text;
  ThemeTextStyles({
    required this.button,
    required this.text,
  });
  factory ThemeTextStyles.light() => ThemeTextStyles(
        button: TextStyle(
          fontSize: 18.0.sp,
          fontWeight: FontWeight.w600,
          color: AppColors.buttonLight,
        ),
        text: TextStyle(
          fontSize: 18.0.sp,
          fontWeight: FontWeight.w600,
          color: AppColors.textLight,
        ),
      );
  factory ThemeTextStyles.dark() => ThemeTextStyles(
        button: TextStyle(
          fontSize: 18.0.sp,
          fontWeight: FontWeight.w600,
          color: AppColors.buttonDark,
        ),
        text: TextStyle(
          fontSize: 18.0.sp,
          fontWeight: FontWeight.w600,
          color: AppColors.textDark,
        ),
      );
}
