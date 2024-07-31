// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_element, unnecessary_cast

part of 'theme_text_styles.dart';

// **************************************************************************
// TailorAnnotationsGenerator
// **************************************************************************

mixin _$ThemeTextStylesTailorMixin on ThemeExtension<ThemeTextStyles> {
  TextStyle get button;
  TextStyle get text;

  @override
  ThemeTextStyles copyWith({
    TextStyle? button,
    TextStyle? text,
  }) {
    return ThemeTextStyles(
      button: button ?? this.button,
      text: text ?? this.text,
    );
  }

  @override
  ThemeTextStyles lerp(
      covariant ThemeExtension<ThemeTextStyles>? other, double t) {
    if (other is! ThemeTextStyles) return this as ThemeTextStyles;
    return ThemeTextStyles(
      button: TextStyle.lerp(button, other.button, t)!,
      text: TextStyle.lerp(text, other.text, t)!,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ThemeTextStyles &&
            const DeepCollectionEquality().equals(button, other.button) &&
            const DeepCollectionEquality().equals(text, other.text));
  }

  @override
  int get hashCode {
    return Object.hash(
      runtimeType.hashCode,
      const DeepCollectionEquality().hash(button),
      const DeepCollectionEquality().hash(text),
    );
  }
}

extension ThemeTextStylesBuildContext on BuildContext {
  ThemeTextStyles get themeTextStyles =>
      Theme.of(this).extension<ThemeTextStyles>()!;
}
