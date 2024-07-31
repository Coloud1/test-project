//@formatter:off

import 'package:go_router/go_router.dart';
import 'package:test_prj_ivan/presentation/screens/home/home_screen.dart';
import 'package:test_prj_ivan/presentation/screens/login/login/login_screen.dart';
import 'package:test_prj_ivan/presentation/screens/registration/registration_screen.dart';

//{imports end}

class AppRouter {
  static const _initialLocation = _loginPath;
  static const String _loginPath = '/login';
  static const String _registrationPath = 'registration';
  static const String _homePath = '/home';
  static const String loginRoute = 'login';
  static const String registrationRoute = 'registrationName';
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
      // refreshListenable: sessionService(),
      // redirect: (context, state) {
      //   return null;
      // },
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
