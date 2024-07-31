import 'package:test_prj_ivan/app/router/app_route_location.dart';

enum AppRoute {
  root('/');
//{routes declaration end}

  final String routePath;
  final AppRouteLocation location;

  const AppRoute(
    this.routePath, {
    this.location = AppRouteLocation.securedApp,
  });

  static AppRoute? fromName(String? value) {
    if (value == null || value.isEmpty) {
      return null;
    }
    return AppRoute.values.firstWhere((e) => e.name == value);
  }

  static AppRoute? fromRoutePath(String? value) {
    if (value == null || value.isEmpty) {
      return null;
    }
    return AppRoute.values.firstWhere((e) => e.routePath == value);
  }
}
