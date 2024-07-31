import 'package:get_it/get_it.dart';

import 'package:test_prj_ivan/core/di/app.dart';
import 'package:test_prj_ivan/core/di/bloc.dart';
import 'package:test_prj_ivan/core/di/local.dart';
import 'package:test_prj_ivan/core/di/remote.dart';
import 'package:test_prj_ivan/core/di/repository.dart';
import 'package:test_prj_ivan/core/di/services.dart';
import 'package:test_prj_ivan/core/di/source.dart';
import 'package:test_prj_ivan/core/di/usecase.dart';

void initializeDi(GetIt getIt) {
  registerLocal(getIt);
  registerCoreServices(getIt);
  registerRemote(getIt);
  registerSources(getIt);
  registerRepositories(getIt);
  registerApp(getIt);
  registerAppServices(getIt);
  registerUseCases(getIt);
  registerBloc(getIt);
}
