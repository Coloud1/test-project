import 'package:flutter/cupertino.dart';
import 'package:test_prj_ivan/app/localization/generated/l10n.dart';

extension BuildContextExt on BuildContext {
  S get tr => S.of(this);
}
