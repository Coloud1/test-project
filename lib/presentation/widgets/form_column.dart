import 'package:flutter/cupertino.dart';

class FormColumn extends Form {
  FormColumn({
    required this.children,
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.mainAxisSize = MainAxisSize.max,
    this.crossAxisAlignment = CrossAxisAlignment.center,
    super.autovalidateMode,
    super.canPop,
    super.onChanged,
    super.onPopInvoked,
    super.key,
  }) : super(
          child: Column(
            mainAxisSize: mainAxisSize,
            mainAxisAlignment: mainAxisAlignment,
            crossAxisAlignment: crossAxisAlignment,
            children: children,
          ),
        );

  final MainAxisSize mainAxisSize;
  final MainAxisAlignment mainAxisAlignment;
  final CrossAxisAlignment crossAxisAlignment;
  final List<Widget> children;
}
