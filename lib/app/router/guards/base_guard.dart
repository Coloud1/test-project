import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

abstract class BaseGuard {
  String? makeRedirect(BuildContext context, GoRouterState state);
}
