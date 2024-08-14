import 'package:collection/collection.dart';
import 'package:test_prj_ivan/app/router/app_route_location.dart';

enum AppRoute {
  root('/'),
  login('/login', location: AppRouteLocation.auth),
  registration('registration', location: AppRouteLocation.auth),
  loginPhone('phone', location: AppRouteLocation.auth),
  loginPhoneOtp('phone-otp', location: AppRouteLocation.auth),
  homeSetName('/set-name'),
  homeSetEmail('/set-email'),
  home('/home'),
  unknown('/unknown'),
  settings('/setting'),
  settingsAccountProviders('account-providers');
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
    return AppRoute.values.firstWhereOrNull(
      (e) => e.routePath == value,
    );
  }
}
