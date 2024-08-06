import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:test_prj_ivan/app/util/field_focus_util.dart';

class CodeWidget extends StatelessWidget {
  final TextEditingController controller;
  final VoidCallback onCompleted;

  const CodeWidget({
    required this.controller,
    required this.onCompleted,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const focusedBorderColor = Color.fromRGBO(23, 171, 144, 1);
    const fillColor = Color.fromRGBO(243, 246, 249, 0);
    const borderColor = Color.fromRGBO(23, 171, 144, 0.4);

    final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(19),
        border: Border.all(color: borderColor),
      ),
    );

    return Pinput(
      controller: controller,
      length: 6,
      hapticFeedbackType: HapticFeedbackType.lightImpact,
      onCompleted: (pin) {
        debugPrint('onCompleted: $pin');
        onCompleted();
      },
      onChanged: (value) {
        debugPrint('onChanged: $value');
      },
      cursor: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 9),
            width: 22,
            height: 1,
            color: focusedBorderColor,
          ),
        ],
      ),
      focusedPinTheme: defaultPinTheme.copyWith(
        decoration: defaultPinTheme.decoration!.copyWith(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: focusedBorderColor),
        ),
      ),
      submittedPinTheme: defaultPinTheme.copyWith(
        decoration: defaultPinTheme.decoration!.copyWith(
          color: fillColor,
          borderRadius: BorderRadius.circular(19),
          border: Border.all(color: focusedBorderColor),
        ),
      ),
      errorPinTheme: defaultPinTheme.copyBorderWith(
        border: Border.all(color: Colors.redAccent),
      ),
      onTapOutside: FieldFocusUtil.unfocus,
    );
  }
}
