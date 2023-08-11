import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../../common/firebase/firebase_crashlogger.dart';
import '../error/failure.dart';
import 'dio_interceptor.dart';

typedef ResponseConverter<T> = T Function(dynamic response);

class DioClient with FirebaseCrashLogger {
  String baseUrl = const String.fromEnvironment("BASE_URL");

  late final Dio _dio;

  DioClient() {
    _dio = _createDio();
    _dio.interceptors.add(DioInterceptor());
  }

  Dio _createDio() => Dio(
        BaseOptions(
          baseUrl: baseUrl,
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
          },
          receiveTimeout: const Duration(seconds: 20),
          connectTimeout: const Duration(seconds: 20),
          validateStatus: (int? status) {
            return status! > 0;
          },
        ),
      );

  Future<Either<Failure, T>> getRequest<T>(
    String url, {
    Map<String, dynamic>? queryParameters,
    required ResponseConverter<T> converter,
    bool isIsolate = true,
  }) async {
    try {
      final response = await _dio.get(url, queryParameters: queryParameters);
      if ((response.statusCode ?? 0) < 200 ||
          (response.statusCode ?? 0) > 201) {
        throw DioException(
          requestOptions: response.requestOptions,
          response: response,
        );
      }

      return Right(converter(response.data));
    } on DioException catch (e, stackTrace) {
      nonFatalError(error: e, stackTrace: stackTrace);
      return Left(
        ServerFailure(
          e.response?.data['message'] as String? ?? e.message,
        ),
      );
    }
  }

  Future<Either<Failure, T>> postRequest<T>(
    String url, {
    Map<String, dynamic>? data,
    required ResponseConverter<T> converter,
    bool isIsolate = true,
  }) async {
    try {
      final response = await _dio.post(url, data: data);
      if ((response.statusCode ?? 0) < 200 ||
          (response.statusCode ?? 0) > 201) {
        throw DioException(
          requestOptions: response.requestOptions,
          response: response,
        );
      }

      return Right(converter(response.data));
    } on DioException catch (e, stackTrace) {
      nonFatalError(error: e, stackTrace: stackTrace);
      return Left(
        ServerFailure(
          e.response?.data['message'] as String? ?? e.message,
        ),
      );
    }
  }
}
