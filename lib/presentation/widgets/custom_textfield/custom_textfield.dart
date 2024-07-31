import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_prj_ivan/app/util/app_assets.dart';
import 'package:test_prj_ivan/app/util/field_focus_util.dart';

class CustomTextField extends StatefulWidget {
  final String fieldText;
  final TextEditingController? controller;
  final String? hintText;
  final int minLines;
  final int maxLines;
  final TextInputType keyboardType;
  final TextInputAction textInputAction;
  final List<TextInputFormatter>? inputFormatters;
  final bool useObscure;
  final FormFieldValidator<String>? validator;

  const CustomTextField({
    this.controller,
    this.hintText,
    this.fieldText = '',
    this.minLines = 1,
    this.maxLines = 1,
    this.keyboardType = TextInputType.text,
    this.textInputAction = TextInputAction.done,
    this.inputFormatters,
    this.useObscure = false,
    this.validator,
    super.key,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  late bool _isObscured;

  @override
  void initState() {
    super.initState();
    _isObscured = widget.useObscure;
  }

  @override
  Widget build(BuildContext context) {
    // final style = context.textStyles;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.fieldText.isNotEmpty) ...[
          Text(
            widget.fieldText,
            // style: style.oswaldBody1AlternativeBody1MediumAlternative.copyWith(
            //   color: Colors.grey,
            // ),
          ),
          const SizedBox(height: 8),
        ],
        TextFormField(
          onTapOutside: FieldFocusUtil.unfocus,
          controller: widget.controller,
          obscureText: _isObscured,
          decoration: InputDecoration(
            filled: true,
            // fillColor: context.appColors.middleGreyColor,
            // fillColor: Colors.red,
            hintText: widget.hintText,
            contentPadding: const EdgeInsets.fromLTRB(0, 17, 12, 17),
            prefix: const SizedBox(width: 12),
            // hintStyle: style.oswald19Regular.copyWith(
            //   color: context.appColors.whiteColor.withOpacity(0.2),
            // ),
            // errorStyle: style.interBody3Body3Medium
            //     .copyWith(color: context.appColors.errorRedColor),
            errorMaxLines: 2,
            focusedBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.zero,
            ),
            focusedErrorBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.zero,
            ),
            errorBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.zero,
            ),
            border: InputBorder.none,
            suffixIconConstraints: const BoxConstraints(),
            suffixIcon: widget.useObscure
                ? GestureDetector(
                    onTap: _onObscure,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: SvgPicture.asset(
                        _isObscured ? AppAssets.hidden : AppAssets.visible,
                        width: 24,
                        height: 24,
                        colorFilter: const ColorFilter.mode(
                          Colors.white,
                          BlendMode.srcIn,
                        ),
                      ),
                    ),
                  )
                : const SizedBox.shrink(),
          ),
          keyboardType: widget.keyboardType,
          textInputAction: widget.textInputAction,
          minLines: widget.useObscure ? 1 : widget.minLines,
          maxLines: widget.useObscure ? 1 : widget.maxLines,
          cursorWidth: 1,
          cursorHeight: 32,
          // cursorColor: context.appColors.brandColorLuminousOrangeColor,
          // style: style.oswald19Regular
          //     .copyWith(color: context.appColors.whiteColor),
          inputFormatters: widget.inputFormatters,
          validator: widget.validator,
        ),
      ],
    );
  }

  void _onObscure() {
    setState(() {
      _isObscured = !_isObscured;
    });
  }
}
