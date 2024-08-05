//@formatter:off

import 'package:get_it/get_it.dart';
import 'package:test_prj_ivan/app/service/auth_service.dart';
import 'package:test_prj_ivan/domain/repository/registration_repository.dart';
import 'package:test_prj_ivan/domain/usecase/create_account_with_credentials_use_case.dart';
import 'package:test_prj_ivan/domain/usecase/make_login_with_use_case.dart';

void registerUseCases(GetIt getIt) {
  getIt
    ..registerLazySingleton<MakeLoginWithUseCase>(
      () => MakeLoginWithUseCase(
        authService: getIt.get<AuthService>(),
      ),
    )
    ..registerLazySingleton<CreateAccountWithCredentialsUseCase>(
      () => CreateAccountWithCredentialsUseCase(
        repository: getIt.get<RegistrationRepository>(),
      ),
    );
}
