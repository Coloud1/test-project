import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:test_prj_ivan/presentation/style/theme/theme_extension/ext.dart';

class AppTextFormField extends StatelessWidget {
  final TextEditingController? controller;
  final bool enabled;
  final String label;
  final TextInputType? keyboardType;
  final BorderRadius? borderRadius;
  final TextStyle? labelStyle;
  final Color? fillColor;
  final bool obscureText;
  final List<TextInputFormatter>? inputFormatters;
  final VoidCallback? onEditingComplete;
  final Function(String)? onChanged;
  final Function(String)? onSubmitted;
  final Function(String?)? validator;

  const AppTextFormField({
    required this.label,
    this.enabled = true,
    this.controller,
    this.keyboardType,
    this.borderRadius,
    this.labelStyle,
    this.fillColor,
    this.onEditingComplete,
    this.onChanged,
    this.onSubmitted,
    this.validator,
    this.obscureText = false,
    this.inputFormatters,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      enabled: enabled,
      validator: (value) => validator?.call(value),
      obscureText: obscureText,
      inputFormatters: inputFormatters,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: borderRadius ?? BorderRadius.circular(10),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: borderRadius ?? BorderRadius.circular(10),
          borderSide: BorderSide(
            color: context.appColors.textColor,
          ),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: borderRadius ?? BorderRadius.circular(10),
          borderSide: BorderSide(
            color: context.appColors.textColor.withOpacity(0.2),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: borderRadius ?? BorderRadius.circular(10),
          borderSide: BorderSide(
            color: context.appColors.buttonColor,
          ),
        ),
        labelText: label,
        labelStyle: enabled
            ? labelStyle ?? context.appTextStyles.text
            : labelStyle?.copyWith(
                  color: labelStyle?.color?.withOpacity(0.2),
                ) ??
                context.appTextStyles.text?.copyWith(
                  color: context.appTextStyles.text?.color?.withOpacity(0.2),
                ),
        fillColor: fillColor,
        filled: fillColor != null,
      ),
      onEditingComplete: () => onEditingComplete?.call(),
      onChanged: (value) => onChanged?.call(value),
      onFieldSubmitted: (value) => onSubmitted?.call(value),
    );
  }
}
