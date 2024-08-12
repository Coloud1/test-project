//@formatter:off

import 'package:go_router/go_router.dart';
import 'package:test_prj_ivan/app/router/app_route.dart';
import 'package:test_prj_ivan/app/router/go_router_wrapper.dart';
import 'package:test_prj_ivan/app/router/guards/base_guard.dart';
import 'package:test_prj_ivan/core/di/services.dart';
import 'package:test_prj_ivan/presentation/screens/home/home_screen.dart';
import 'package:test_prj_ivan/presentation/screens/login/login/login_screen.dart';
import 'package:test_prj_ivan/presentation/screens/onboarding/set_email/set_email_screen.dart';
import 'package:test_prj_ivan/presentation/screens/onboarding/set_name/set_name_screen.dart';
import 'package:test_prj_ivan/presentation/screens/phone/phone_otp/phone_otp_screen.dart';
import 'package:test_prj_ivan/presentation/screens/phone/phone_screen/phone_screen.dart';
import 'package:test_prj_ivan/presentation/screens/registration/registration_screen.dart';

//{imports end}

class AppRouter {
  static final _initialLocation = AppRoute.login.routePath;
  static final AppRouter _instance = AppRouter._privateConstructor();
  static late GoRouter router;
  static final Map<AppRoute, BaseGuard> _guards = {};
  static late BaseGuard _globalGuard;

  AppRouter._privateConstructor() {
    _initialize(guards: _guards);
  }

  factory AppRouter.init({
    Map<AppRoute, BaseGuard> guards = const {},
    BaseGuard? globalGuard,
  }) {
    _guards
      ..clear()
      ..addAll(guards);

    if (globalGuard != null) {
      _globalGuard = globalGuard;
    }

    return _instance;
  }

  void _initialize({
    Map<AppRoute, BaseGuard> guards = const {},
    String? initialLocation,
  }) {
    router = GoRouter(
      initialLocation: initialLocation ?? _initialLocation,
      refreshListenable: sessionService(),
      redirect: _globalGuard.makeRedirect,
      routes: <GoRoute>[
        GoRouterWrapper(
          path: AppRoute.login.routePath,
          name: AppRoute.login.name,
          builder: (context, state) => const LoginScreen(),
          routes: [
            GoRouterWrapper(
              path: AppRoute.registration.routePath,
              name: AppRoute.registration.name,
              builder: (context, state) => const RegistrationScreen(),
            ),
            GoRouterWrapper(
              path: AppRoute.loginPhone.routePath,
              name: AppRoute.loginPhone.name,
              builder: (context, state) => const PhoneScreen(),
            ),
            GoRouterWrapper(
              path: AppRoute.loginPhoneOtp.routePath,
              name: AppRoute.loginPhoneOtp.name,
              builder: (context, state) => PhoneOtpScreen(
                phoneNumber: state.extra as String? ?? '',
              ),
            ),
          ],
        ),
        GoRouterWrapper(
          path: AppRoute.homeSetName.routePath,
          name: AppRoute.homeSetName.name,
          builder: (context, state) => const SetNameScreen(),
        ),
        GoRouterWrapper(
          path: AppRoute.homeSetEmail.routePath,
          name: AppRoute.homeSetEmail.name,
          builder: (context, state) => const SetEmailScreen(),
        ),
        GoRouterWrapper(
          path: AppRoute.home.routePath,
          name: AppRoute.home.name,
          builder: (context, state) => const HomeScreen(),
          baseGuard: _guards[AppRoute.home],
        ),
        //{routes end}
      ],
    );
  }
}
