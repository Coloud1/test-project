import 'package:flutter/material.dart';

import 'package:test_prj_ivan/presentation/style/theme/theme_extension/theme_colors.dart';
import 'package:test_prj_ivan/presentation/style/theme/theme_extension/theme_text_styles.dart';

extension ThemeFromContextExtension on BuildContext {
  // ignore: avoid-non-null-assertion
  ThemeColors get appColors => Theme.of(this).extension<ThemeColors>()!;

  ThemeTextStyles get appTextStyles =>
      // ignore: avoid-non-null-assertion
      Theme.of(this).extension<ThemeTextStyles>()!;
}
