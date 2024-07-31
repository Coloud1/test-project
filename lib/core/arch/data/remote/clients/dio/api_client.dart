import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:flutter/foundation.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:test_prj_ivan/core/arch/data/remote/base/base_api_client.dart';
import 'package:test_prj_ivan/core/arch/data/remote/clients/dio/interceptor/basic_app_auth_interceptor.dart';
import 'package:test_prj_ivan/core/arch/logger/app_logger_impl.dart';

class ApiClient implements BaseApiClient<Dio> {
  static const defaultConnectTimeout = 30000;
  static const defaultReceiveTimeout = 30000;

  ApiClient({required BaseOptions options}) {
    client = Dio(options);
    customInterceptor = BasicAppAuthInterceptor();
    client.transformer = BackgroundTransformer();
    attachLoggerInterceptor();
  }

  late BasicAppAuthInterceptor customInterceptor;

  @override
  late Dio client;

  @override
  void attachLoggerInterceptor() {
    if (kDebugMode) {
      client.interceptors.add(
        PrettyDioLogger(
          requestHeader: true,
          requestBody: true,
          responseHeader: true,
          compact: false,
        ),
      );
    }
  }

  @override
  void attachInterceptors() {
    client.interceptors.remove(customInterceptor);
    client.interceptors.add(customInterceptor);
    _attachCacheInterceptor();
  }

  @override
  void deAttachInterceptors() {
    client.interceptors.remove(customInterceptor);
    clearCache();
  }

  void attachCharlesProxy(String? charlesIp, String? port) {
    if (charlesIp == null || port == null) return;

    client.httpClientAdapter = IOHttpClientAdapter(
      createHttpClient: () {
        final client = HttpClient()
          ..findProxy = (uri) => 'PROXY $charlesIp:$port';

        //ignore: cascade_invocations
        client.badCertificateCallback = (cert, host, port) => true;
        return client;
      },
    );

    logger.d('CharlesProxyEnabled');
  }

  Future<void> clearCache() async {
    logger.d('clearCache');
    await _attachCacheInterceptor();
  }

  Future<void> _attachCacheInterceptor() async {
    logger.d('attachCacheInterceptor');
  }
}
