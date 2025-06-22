import 'package:dio/dio.dart';

import '../app_constants.dart';

class HttpService {
  Dio client() =>
      Dio(
          BaseOptions(
            baseUrl: AppConstants.baseUrl,
            connectTimeout: const Duration(seconds: 20),
            receiveTimeout: const Duration(seconds: 20),
            sendTimeout: const Duration(seconds: 20),
            headers: {
              'Accept':
                  'application/json, application/geo+json, application/gpx+xml, img/png; charset=utf-8',
              'Content-type': 'application/json',
            },
          ),
        )
        ..interceptors.add(
          LogInterceptor(
            responseHeader: false,
            requestHeader: true,
            responseBody: true,
            requestBody: true,
          ),
        );
}
