//@formatter:off

import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';
import 'package:test_prj_ivan/app/service/app_service.dart';
import 'package:test_prj_ivan/app/service/auth_service.dart';
import 'package:test_prj_ivan/app/service/phone_auth_service.dart';
import 'package:test_prj_ivan/app/service/session_service/session_service.dart';
import 'package:test_prj_ivan/app/service/user_service.dart';
import 'package:test_prj_ivan/domain/repository/login_repository.dart';
import 'package:test_prj_ivan/domain/repository/user_repository.dart';

void registerCoreServices(GetIt getIt) {
  getIt
    ..registerSingleton<SessionService>(SessionService())
    ..registerSingleton<AppService>(AppService());
}

void registerAppServices(GetIt getIt) {
  getIt
    ..registerLazySingleton<AuthService>(
      () => AuthService(
        loginRepository: getIt.get<LoginRepository>(),
      ),
    )
    ..registerSingleton<UserService>(
      UserService(
        userRepository: getIt.get<UserRepository>(),
        sessionService: getIt.get<SessionService>(),
      ),
    )
    ..registerFactory<PhoneAuthService>(
      () => PhoneAuthService(
        auth: FirebaseAuth.instance,
        authService: getIt.get<AuthService>(),
      ),
    );
}

SessionService sessionService() => GetIt.I.get<SessionService>();

AppService environmentService() => GetIt.I.get<AppService>();
