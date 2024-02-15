import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioFactory {
  DioFactory._();

  static Dio? dio;

  static Future<Dio> getInstance() async {
    Duration timeout = const Duration(seconds: 60);
    if (dio == null) {
      BaseOptions baseOptions = BaseOptions(
        sendTimeout: timeout,
        receiveTimeout: timeout,
        connectTimeout: timeout,
        receiveDataWhenStatusError: true,
      );
      dio = Dio(baseOptions);
    }
    _addDioInterceptor();
    return dio!;
  }

  static void _addDioInterceptor() {
    dio?.interceptors.add(PrettyDioLogger(
      requestBody: true,
      requestHeader: true,
      responseHeader: true,
      responseBody: true,
    ));
  }
}
