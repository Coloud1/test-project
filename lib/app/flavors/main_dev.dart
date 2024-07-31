//@formatter:off

import 'package:test_prj_ivan/flavors.dart';
import 'package:test_prj_ivan/main.dart';

void main() async {
  F.appFlavor = Flavor.dev;
  await mainApp();
}
