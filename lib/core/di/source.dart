//@formatter:off

import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';
import 'package:test_prj_ivan/data/source/remote/login_source.dart';
import 'package:test_prj_ivan/data/source/remote/login_source_impl.dart';

//{imports end}

void registerSources(GetIt getIt) {
  getIt.registerLazySingleton<LoginSource>(
    () => LoginSourceImpl(
      auth: FirebaseAuth.instance,
    ),
  );
  //{sources end}
}
