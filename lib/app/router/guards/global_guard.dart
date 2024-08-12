import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:test_prj_ivan/app/router/app_route.dart';
import 'package:test_prj_ivan/app/router/app_route_location.dart';
import 'package:test_prj_ivan/app/router/guards/base_guard.dart';
import 'package:test_prj_ivan/app/service/session_service/session_service.dart';
import 'package:test_prj_ivan/app/service/session_service/session_status.dart';

class GlobalGuard implements BaseGuard {
  final SessionService _sessionService;

  const GlobalGuard({
    required SessionService sessionService,
  }) : _sessionService = sessionService;

  @override
  String? makeRedirect(BuildContext context, GoRouterState state) {
    final location = AppRoute.fromRoutePath(state.matchedLocation)?.location;

    if (_sessionService.sessionStatus == SessionStatus.open) {
      if (location != AppRouteLocation.securedApp) {
        return AppRoute.home.routePath;
      }
    } else {
      if (location == AppRouteLocation.securedApp) {
        return AppRoute.login.routePath;
      }
    }

    return null;
  }
}
