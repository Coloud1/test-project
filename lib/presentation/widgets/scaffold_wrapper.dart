import 'package:flutter/material.dart';

typedef ScaffoldSafeArea = ({bool top, bool bottom});

class ScaffoldWrapper extends StatelessWidget {
  final PreferredSizeWidget? appBar;
  final Widget body;
  final EdgeInsets? margin;
  final ScaffoldSafeArea safeArea;
  final bool? resizeToAvoidBottomInset;
  final bool maintainBottomViewPadding;
  final bool extendBodyBehindAppBar;

  const ScaffoldWrapper({
    required this.body,
    this.appBar,
    this.margin,
    this.safeArea = (top: false, bottom: false),
    this.resizeToAvoidBottomInset,
    this.maintainBottomViewPadding = false,
    this.extendBodyBehindAppBar = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var body = this.body;

    if (safeArea.top || safeArea.bottom) {
      body = SafeArea(
        top: safeArea.top,
        bottom: safeArea.bottom,
        maintainBottomViewPadding: maintainBottomViewPadding,
        child: body,
      );
    }

    if (margin != null) {
      body = Padding(
        padding: margin ?? EdgeInsets.zero,
        child: body,
      );
    }

    return Scaffold(
      appBar: appBar,
      body: body,
      resizeToAvoidBottomInset: resizeToAvoidBottomInset,
      extendBodyBehindAppBar: extendBodyBehindAppBar,
    );
  }
}
