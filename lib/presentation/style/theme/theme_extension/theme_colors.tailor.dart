// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_element, unnecessary_cast

part of 'theme_colors.dart';

// **************************************************************************
// TailorAnnotationsGenerator
// **************************************************************************

mixin _$ThemeColorsTailorMixin on ThemeExtension<ThemeColors> {
  Color get buttonColor;
  Color get buttonDisabledColor;
  Color get scaffoldBackgroundColor;
  Color get textColor;

  @override
  ThemeColors copyWith({
    Color? buttonColor,
    Color? buttonDisabledColor,
    Color? scaffoldBackgroundColor,
    Color? textColor,
  }) {
    return ThemeColors(
      buttonColor: buttonColor ?? this.buttonColor,
      buttonDisabledColor: buttonDisabledColor ?? this.buttonDisabledColor,
      scaffoldBackgroundColor:
          scaffoldBackgroundColor ?? this.scaffoldBackgroundColor,
      textColor: textColor ?? this.textColor,
    );
  }

  @override
  ThemeColors lerp(covariant ThemeExtension<ThemeColors>? other, double t) {
    if (other is! ThemeColors) return this as ThemeColors;
    return ThemeColors(
      buttonColor: Color.lerp(buttonColor, other.buttonColor, t)!,
      buttonDisabledColor:
          Color.lerp(buttonDisabledColor, other.buttonDisabledColor, t)!,
      scaffoldBackgroundColor: Color.lerp(
          scaffoldBackgroundColor, other.scaffoldBackgroundColor, t)!,
      textColor: Color.lerp(textColor, other.textColor, t)!,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ThemeColors &&
            const DeepCollectionEquality()
                .equals(buttonColor, other.buttonColor) &&
            const DeepCollectionEquality()
                .equals(buttonDisabledColor, other.buttonDisabledColor) &&
            const DeepCollectionEquality().equals(
                scaffoldBackgroundColor, other.scaffoldBackgroundColor) &&
            const DeepCollectionEquality().equals(textColor, other.textColor));
  }

  @override
  int get hashCode {
    return Object.hash(
      runtimeType.hashCode,
      const DeepCollectionEquality().hash(buttonColor),
      const DeepCollectionEquality().hash(buttonDisabledColor),
      const DeepCollectionEquality().hash(scaffoldBackgroundColor),
      const DeepCollectionEquality().hash(textColor),
    );
  }
}

extension ThemeColorsBuildContext on BuildContext {
  ThemeColors get themeColors => Theme.of(this).extension<ThemeColors>()!;
}
