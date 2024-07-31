//@formatter:off

import 'package:get_it/get_it.dart';
import 'package:test_prj_ivan/domain/repository/login_repository.dart';
import 'package:test_prj_ivan/domain/repository/registration_repository.dart';
import 'package:test_prj_ivan/domain/usecase/create_account_with_credentials_use_case.dart';
import 'package:test_prj_ivan/domain/usecase/make_login_with_use_case.dart';

void registerUseCases(GetIt getIt) {
  getIt
    ..registerLazySingleton<MakeLoginWithUseCase>(
      () => MakeLoginWithUseCase(
        repository: getIt.get<LoginRepository>(),
      ),
    )
    ..registerLazySingleton<CreateAccountWithCredentialsUseCase>(
      () => CreateAccountWithCredentialsUseCase(
        repository: getIt.get<RegistrationRepository>(),
      ),
    );
}
