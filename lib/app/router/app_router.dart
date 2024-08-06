//@formatter:off

import 'package:go_router/go_router.dart';
import 'package:test_prj_ivan/app/service/session_service/session_status.dart';
import 'package:test_prj_ivan/core/di/services.dart';
import 'package:test_prj_ivan/presentation/screens/home/home_screen.dart';
import 'package:test_prj_ivan/presentation/screens/login/login/login_screen.dart';
import 'package:test_prj_ivan/presentation/screens/phone/phone_otp/phone_otp_screen.dart';
import 'package:test_prj_ivan/presentation/screens/phone/phone_screen/phone_screen.dart';
import 'package:test_prj_ivan/presentation/screens/registration/registration_screen.dart';

//{imports end}

class AppRouter {
  static const _initialLocation = _loginPath;
  static const String _loginPath = '/login';
  static const String loginRoute = 'loginRoute';
  static const String _loginPhonePath = 'phone';
  static const String loginPhoneRoute = 'phoneRoute';
  static const String _loginPhoneOtpPath = 'phone-otp';
  static const String loginPhoneOtpRoute = 'phoneOtpRoute';

  static const String _registrationPath = 'registration';
  static const String registrationRoute = 'registrationRoute';

  static const String _homePath = '/home';
  static const String homeRoute = 'home';

  static final AppRouter _instance = AppRouter._privateConstructor();
  static late GoRouter router;

  AppRouter._privateConstructor() {
    _initialize();
  }

  factory AppRouter.init() {
    return _instance;
  }

  void _initialize({String initialLocation = _initialLocation}) {
    router = GoRouter(
      initialLocation: initialLocation,
      refreshListenable: sessionService(),
      redirect: (context, state) {
        final session = sessionService();

        if (session.sessionStatus == SessionStatus.open) {
          if (state.matchedLocation.startsWith(_homePath)) {
            return null;
          } else {
            return _homePath;
          }
        } else {
          if (state.matchedLocation.startsWith(_loginPath) ||
              state.matchedLocation.startsWith(_registrationPath) ||
              state.matchedLocation.startsWith(_loginPhonePath) ||
              state.matchedLocation.startsWith(_loginPhoneOtpPath)) {
            return null;
          } else {
            return _loginPath;
          }
        }
      },
      routes: <GoRoute>[
        GoRoute(
          path: _loginPath,
          name: loginRoute,
          builder: (context, state) => const LoginScreen(),
          routes: [
            GoRoute(
              path: _registrationPath,
              name: registrationRoute,
              builder: (context, state) => const RegistrationScreen(),
            ),
            GoRoute(
              path: _loginPhonePath,
              name: loginPhoneRoute,
              builder: (context, state) => const PhoneScreen(),
            ),
            GoRoute(
              path: _loginPhoneOtpPath,
              name: loginPhoneOtpRoute,
              builder: (context, state) => PhoneOtpScreen(
                phoneNumber: state.extra as String? ?? '',
              ),
            ),
          ],
        ),
        GoRoute(
          path: _homePath,
          name: homeRoute,
          builder: (context, state) => const HomeScreen(),
        ),
        //{routes end}
      ],
    );
  }
}
