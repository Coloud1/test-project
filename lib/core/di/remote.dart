//@formatter:off

import 'package:get_it/get_it.dart';
import 'package:test_prj_ivan/core/arch/data/remote/clients/dio/api_client.dart';
import 'package:test_prj_ivan/core/arch/data/remote/clients/dio/dio_client_module.dart';
import 'package:test_prj_ivan/core/arch/data/remote/clients/dio/dio_const.dart';
import 'package:test_prj_ivan/core/arch/data/remote/clients/dio/dio_request_processor/dio_request_processor.dart';

void registerRemote(GetIt getIt) {
  final dioClientModule = _DioClientModule();

  getIt
    ..registerLazySingleton<DioRequestProcessor>(
      dioClientModule.makeDioErrorHandler,
    )
    ..registerLazySingleton<ApiClient>(
      () => dioClientModule.makeApiClient(DioConst.defaultBaseUrl),
      instanceName: DioConst.defaultApiClientName,
    );

  //{remote end}
}

class _DioClientModule extends DioClientModule {}
