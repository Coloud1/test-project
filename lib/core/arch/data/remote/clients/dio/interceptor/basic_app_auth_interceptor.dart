import 'dart:io';

import 'package:dio/dio.dart';

import 'package:test_prj_ivan/core/arch/logger/app_logger_impl.dart';

class BasicAppAuthInterceptor extends InterceptorsWrapper {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    logger.d('AppInterceptor onRequest');
    //TODO add accessToken
    // var accessToken = 'some token';
    // options.headers[kAuthHeader] = '$kAuthPrefix$accessToken';
    // options.headers[kAcceptHeader] = kJsonPrefix;
    // options.headers[kContentTypeHeader] = kJsonPrefix;
    super.onRequest(options, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    logger.d('AppInterceptor start: $err');
    if (err.response?.statusCode == HttpStatus.unauthorized) {
      //TODO disposeSessionLocal
      return;
    }
    super.onError(err, handler);
  }
}
