import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:test_prj_ivan/app/router/app_route.dart';
import 'package:test_prj_ivan/app/router/guards/base_guard.dart';
import 'package:test_prj_ivan/app/service/user_service.dart';

class HomeRouteGuard implements BaseGuard {
  final UserService _userService;

  const HomeRouteGuard({
    required UserService userService,
  }) : _userService = userService;

  @override
  String? makeRedirect(BuildContext context, GoRouterState state) {
    final user = _userService.user;

    if (user == null) {
      return AppRoute.login.routePath;
    }

    if (user.email.isEmpty) {
      return AppRoute.homeSetEmail.routePath;
    }

    if (user.displayName.isEmpty) {
      return AppRoute.homeSetName.routePath;
    }

    return null;
  }
}
