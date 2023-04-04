import 'package:dartz/dartz.dart';
import 'package:deconz_app/constants/constants.dart';
import 'package:deconz_app/utils/string_extension.dart';
import 'package:dio/dio.dart';

import '../utils/logger.dart';

extension DioExtension<T extends Either<ErrorType, dynamic>> on Dio {
  void interceptorToken() {
    //https://github.com/dresden-elektronik/deconz-rest-plugin/issues/2880
    //Anyway, default username/password for both webapps is delight
    //https://github.com/dresden-elektronik/deconz-rest-plugin/issues/2880
    //Anyway, default username/password for both webapps is delight
    final token = 'delight:$password'.encodeBase64String();
    logger.d('token= $token');
    options.headers = {
      'Authorization': 'Basic $token',
    };
  }

  Task<T> getX(
    String path, {
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
  }) {
    interceptorToken();
    return Task(() => get(path,
            queryParameters: queryParameters,
            options: options,
            cancelToken: cancelToken,
            onReceiveProgress: onReceiveProgress))
        .attempt()
        .mapFailureAndServerError() as Task<T>;
  }

  Task<T> postX(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
  }) {
    interceptorToken();
    return Task(() => post(path,
            data: data,
            queryParameters: queryParameters,
            options: options,
            cancelToken: cancelToken,
            onReceiveProgress: onReceiveProgress))
        .attempt()
        .mapFailureAndServerError() as Task<T>;
  }


  Task<T> putX(
      String path, {
        Object? data,
        Map<String, dynamic>? queryParameters,
        Options? options,
        CancelToken? cancelToken,
        ProgressCallback? onReceiveProgress,
      }) {
    interceptorToken();
    return Task(() => put(path,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onReceiveProgress: onReceiveProgress))
        .attempt()
        .mapFailureAndServerError() as Task<T>;
  }

  Task<T> deleteX(
      String path, {
        Object? data,
        Map<String, dynamic>? queryParameters,
        Options? options,
        CancelToken? cancelToken,
        ProgressCallback? onReceiveProgress,
      }) {
    interceptorToken();
    return Task(() => delete(path,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken))
        .attempt()
        .mapFailureAndServerError() as Task<T>;
  }
}

extension TaskX<T extends Either<Object, U>, U> on Task<T> {
  Task<Either<ErrorType, U>> mapFailureAndServerError() {
    late Either<ErrorType, U> result;
    return map((a) {
      logger.d("isLeft= ${a.isLeft()}");
      if (a.isLeft()) {
        a.fold(
            (l) => {
              // logger.d("isLeft error= $l ${(l is DioError?)} ${(l as DioError).response?.statusCode == 403}"),
                  if ((l is DioError?) &&
                          ((l as DioError).response?.statusCode == 403) ||
                      (l as DioError).response?.statusCode == 400 ||
                      l.response?.statusCode == 404 ||
                      l.response?.statusCode == 503)
                    { result = left(ErrorType.serverError)}
                  else
                    { result = left(ErrorType.networkError)}
                },
            (r) => null);
        return result;
      } else {
        a.fold((error) {
          logger.e("error= $error");
          result = left(ErrorType.networkError);
        }, (resp) {
          if (resp is Response &&
              (resp.statusCode == 200 ||
                  resp.statusCode == 201 ||
                  resp.statusCode == 304)) {
            result = right(resp.data);
            logger.d("isRight data= ${resp.data}");
          } else {
            result = left(ErrorType.serverError);
          }
        });
        return result;
      }
    });
  }
}
