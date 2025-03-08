import 'dart:developer';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';
import 'package:dio_cache_interceptor_hive_store/dio_cache_interceptor_hive_store.dart';
import 'package:flutter/foundation.dart';
import 'package:hive_ce/hive.dart';
import 'package:image_app/base/api/api_const.dart';
import 'package:image_app/base/utils/app_const.dart';
import 'package:path_provider/path_provider.dart';

import 'error_model.dart';
import 'failure.dart';

class Api {
  static final Api _singleton = Api._internal();
  late final Dio _dio;
  late CacheStore _cacheStore;
  String _token = "";

  factory Api() => _singleton;

  Api._internal() {
    _dio = Dio(BaseOptions(
      baseUrl: ApiConst.baseUrl,
      connectTimeout: const Duration(seconds: 30),
      receiveTimeout: const Duration(seconds: 30),
      sendTimeout: const Duration(seconds: 30),
    ));

    _initializeInterceptors();
  }

  Future<void> _initializeInterceptors() async {
    try {
      final dir = await getTemporaryDirectory();
      _cacheStore = HiveCacheStore(dir.path);

      _dio.interceptors.addAll([
        DioCacheInterceptor(
          options: CacheOptions(
            store: _cacheStore,
            hitCacheOnErrorExcept: [],
          ),
        ),
        LogInterceptor(
          requestBody: true,
          responseBody: true,
          error: true,
          logPrint: (v) => log("Dio Log: $v"),
        ),
        ErrorInterceptor(_dio),
        HeaderInterceptor(),
      ]);

      if (!kIsWeb) {
        (_dio.httpClientAdapter as IOHttpClientAdapter).createHttpClient = () {
          return HttpClient()..badCertificateCallback = (cert, host, port) => true;
        };
      }
    } catch (e) {
      log("Error initializing Dio interceptors: $e");
    }
  }

  String get token => _token;
  set token(String? value) => _token = value ?? "";



  void clearKeyToken() {
    _token = "";
  }

  /// **General HTTP Request Handler**
  Future<Response> request(
      String path, {
        String method = 'GET',
        dynamic data,
        Map<String, dynamic>? queryParameters,
        Options? options,
        CancelToken? cancelToken,
        void Function(int, int)? onSendProgress,
        void Function(int, int)? onReceiveProgress,
        bool addAuthInterceptor = false,
      }) async {
    try {

      return await _dio.request(
        path,
        data: data,
        queryParameters: queryParameters,
        options: options?.copyWith(method: method) ?? Options(method: method),
        cancelToken: cancelToken,
        onReceiveProgress: onReceiveProgress,
        onSendProgress: onSendProgress,
      );
    } catch (e) {
      return _handleDioError(e, path);
    }
  }


  /// **Public HTTP Methods**
  Future<Response> get(String path, {Map<String, dynamic>? queryParameters, bool addAuthInterceptor = false}) {
    return request(path, method: 'GET', queryParameters: queryParameters, addAuthInterceptor: addAuthInterceptor);
  }

  Future<Response> post(String path, {dynamic data, bool addAuthInterceptor = false}) {
    return request(path, method: 'POST', data: data, addAuthInterceptor: addAuthInterceptor);
  }

  Future<Response> put(String path, {dynamic data, bool addAuthInterceptor = false}) {
    return request(path, method: 'PUT', data: data, addAuthInterceptor: addAuthInterceptor);
  }

  Future<Response> patch(String path, {dynamic data, bool addAuthInterceptor = false}) {
    return request(path, method: 'PATCH', data: data, addAuthInterceptor: addAuthInterceptor);
  }

  Future<Response> delete(String path, {dynamic data, bool addAuthInterceptor = false}) {
    return request(path, method: 'DELETE', data: data, addAuthInterceptor: addAuthInterceptor);
  }


  Response _handleDioError(dynamic e, String path) {
    if (e is DioException) {
      log("DioException in $path: ${e.message}");
      return e.response ??
          Response(
            requestOptions: RequestOptions(path: path),
            statusCode: 500,
            data: {'error': 'Unknown error occurred'},
          );
    } else {
      log("Unexpected error in $path: $e");
      return Response(
        requestOptions: RequestOptions(path: path),
        statusCode: 500,
        data: {'error': 'Unexpected error'},
      );
    }
  }
}

class HeaderInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.headers = {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    };
    return handler.next(options);
  }
}

class ErrorInterceptor extends Interceptor {
  final Dio dio;

  ErrorInterceptor(this.dio);

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    log("Error is::::::::${err}");
    log("Error.Response is::::::::${err.response}");
    log("Status Code:::::::${err.response?.statusCode}");
    var errorModel = const ErrorModel(message: AppConst.somethingWentWrong);

    try {
      errorModel = ErrorModel.fromJson(err.response?.data);
    } catch (_) {}

    var response = ServerFailure(errorModel.message);
    switch (err.type) {
      case DioExceptionType.connectionTimeout:
        throw ConnectionTimeOutException(err.requestOptions, response);
      case DioExceptionType.sendTimeout:
        throw SendTimeOutException(err.requestOptions, response);
      case DioExceptionType.receiveTimeout:
        throw ReceiveTimeOutException(err.requestOptions, response);

      case DioExceptionType.cancel:
        throw CancelException(err.requestOptions, response);
      case DioExceptionType.unknown:
      // //
        throw UnknownException(err.requestOptions, response);
      case DioExceptionType.badCertificate:
        throw BadCertificateException(err.requestOptions, response);
      case DioExceptionType.connectionError:
        throw NoInternetConnectionException(err.requestOptions, response);

      case DioExceptionType.badResponse:
        {
          switch (err.response?.statusCode) {
            case 400:
              throw BadRequestException(err.requestOptions, response);
            case 401:
              {
                if (err.requestOptions.path.contains("refresh") ||
                    err.requestOptions.path.contains("signin") ||
                    err.requestOptions.path.contains("signup")) {
                  throw BadRequestException(err.requestOptions, response);
                } else {
                  throw UnauthorizedException(err.requestOptions, response);
                }
              }
            case 404:
              throw NotFoundException(err.requestOptions, response);
            case 409:
              throw ConflictException(err.requestOptions, response);
            case 500:
              throw InternalServerErrorException(err.requestOptions, response);

            default:
              throw BadRequestException(err.requestOptions, response);
          }
        }
      default:
        throw BadRequestException(err.requestOptions, response);
    }
  }
}

class AuthInterceptor extends Interceptor {
  final Dio dio;
  // final String apiKey;
  String? authToken;

  AuthInterceptor(
      this.dio, {
        this.authToken,
      });

  @override
  Future<void> onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    return handler.next(options);
  }
}

class RequestInterceptor extends Interceptor {
  final Dio dio;
  final String apiKey;

  RequestInterceptor(this.dio, {required this.apiKey});

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.headers = {
      'apiKey': apiKey, /* 'token': token */
    };
    return handler.next(options);
  }
}

class ConnectionTimeOutException extends DioException {
  ConnectionTimeOutException(RequestOptions r, this.res)
      : super(requestOptions: r);

  final Failure res;

  @override
  String toString() {
    return res.message;
  }
}

class UnknownException extends DioException {
  UnknownException(RequestOptions r, this.res) : super(requestOptions: r);

  final Failure res;

  @override
  String toString() {
    return res.message;
  }
}

class CancelException extends DioException {
  CancelException(RequestOptions r, this.res) : super(requestOptions: r);

  final Failure res;

  @override
  String toString() {
    return res.message;
  }
}

class BadCertificateException extends DioException {
  BadCertificateException(RequestOptions r, this.res)
      : super(requestOptions: r);

  final Failure res;

  @override
  String toString() {
    return res.message;
  }
}

class SendTimeOutException extends DioException {
  SendTimeOutException(RequestOptions r, this.res) : super(requestOptions: r);

  final Failure res;

  @override
  String toString() {
    return res.message;
  }
}

class ReceiveTimeOutException extends DioException {
  ReceiveTimeOutException(RequestOptions r, this.res)
      : super(requestOptions: r);

  final Failure res;

  @override
  String toString() {
    return res.message;
  }
}

//**********-----STATUS CODE ERROR HANDLERS--------**********

class BadRequestException extends DioException {
  BadRequestException(RequestOptions r, this.res) : super(requestOptions: r);

  final Failure res;

  @override
  String toString() {
    return res.message;
  }
}

class InternalServerErrorException extends DioException {
  InternalServerErrorException(RequestOptions r, this.res)
      : super(requestOptions: r);

  final Failure res;

  @override
  String toString() {
    return res.message;
  }
}

class ConflictException extends DioException {
  ConflictException(RequestOptions r, this.res) : super(requestOptions: r);

  final Failure res;

  @override
  String toString() {
    return res.message;
  }
}

class UnauthorizedException extends DioException {
  UnauthorizedException(RequestOptions r, this.res) : super(requestOptions: r);

  final Failure res;

  @override
  String toString() {
    return res.message;
  }
}

class NotFoundException extends DioException {
  NotFoundException(RequestOptions r, this.res) : super(requestOptions: r);

  final Failure res;

  @override
  String toString() {
    return res.message;
  }
}

class NoInternetConnectionException extends DioException {
  NoInternetConnectionException(RequestOptions r, this.res)
      : super(requestOptions: r);

  final Failure res;

  @override
  String toString() {
    return res.message;
  }
}