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
    return Banner(
      message: F.name,
      location: BannerLocation.topEnd,
      child: child,
    );
  }
}
