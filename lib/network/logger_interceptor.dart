
import 'dart:developer';

import 'package:deconz_app/utils/logger.dart';
import 'package:dio/dio.dart';

class LoggerInterceptor implements Interceptor {
  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    logger.e('❌ Dio Error!');
    logger.e('❌ Url: ${err.requestOptions.uri}');
    if (err.stackTrace != null) {
      logger.e('❌ ${err.stackTrace}');
    }
    logger.e('❌ Response Error: ${err.response?.data}');
    return handler.next(err);
  }

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    logger.d('🌍 Sending network request: ${options.baseUrl}${options.path}');
    // options.headers =
    return handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    logger.d('⬅️ Received network response');
    logger.d('${response.statusCode != 200 ? '❌ ${response.statusCode} ❌' : '✅ 200 ✅'} ${response.requestOptions.baseUrl}${response.requestOptions.path}');
    logger.d('Query params: ${response.requestOptions.queryParameters}');
    logger.d('-------------------------');
    return handler.next(response);
  }
}