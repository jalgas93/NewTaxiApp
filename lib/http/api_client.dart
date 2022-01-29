import 'package:dio/dio.dart';
import 'package:taxi/helpers/config.dart';

class ApiClient {
  final Dio client;

  ApiClient._({
    required this.client,
  });

  factory ApiClient.instance() {
    final baseOptions = BaseOptions(
      baseUrl: Config.apiBaseUrl,
      headers: {},
    );
    final dio = Dio(baseOptions);
    return ApiClient._(client: dio);
  }

  Future<dynamic> get(
    String url, {
    Map<String, dynamic>? queryParameters,
  }) async {
    final response = await client.get(
      url,
      queryParameters: queryParameters,
    );
    return response.data;
  }

  Future<dynamic> post(
    String url, {
    dynamic data = const {},
    Map<String, dynamic>? queryParameters,
  }) async {
    final response = await client.post(
      url,
      data: data,
      queryParameters: queryParameters,
    );
    return response.data;
  }

  Future<dynamic> delete(
    String url, {
    dynamic data = const {},
    Map<String, dynamic>? queryParameters,
  }) async {
    final response = await client.delete(
      url,
      data: data,
      queryParameters: queryParameters,
    );
    return response.data;
  }
}
