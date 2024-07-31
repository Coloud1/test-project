//@formatter:off

import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';
import 'package:test_prj_ivan/data/repository/login_repository_impl.dart';
import 'package:test_prj_ivan/data/repository/registration_repository_impl.dart';
import 'package:test_prj_ivan/data/source/remote/login_source.dart';
import 'package:test_prj_ivan/domain/repository/login_repository.dart';
import 'package:test_prj_ivan/domain/repository/registration_repository.dart';

//{imports end}

void registerRepositories(GetIt getIt) {
  //{repositories end}
  getIt
    ..registerLazySingleton<LoginRepository>(
      () => LoginRepositoryImpl(source: getIt.get<LoginSource>()),
    )
    ..registerLazySingleton<RegistrationRepository>(
      () => RegistrationRepositoryImpl(
        auth: FirebaseAuth.instance,
      ),
    );
}
