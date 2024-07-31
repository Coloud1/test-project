import 'package:flutter/material.dart';

import 'package:test_prj_ivan/flavors.dart';

class FlavorBanner extends StatelessWidget {
  const FlavorBanner({
    required this.child,
    super.key,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    if (F.name == 'prod') return child;
    //ignore: dead_code
    return Stack(
      children: <Widget>[
        child,
        CustomPaint(
          painter: BannerPainter(
            message: F.name,
            textDirection: Directionality.of(context),
            layoutDirection: Directionality.of(context),
            location: BannerLocation.topStart,
            color: Colors.red,
          ),
        ),
      ],
    );
  }
}
