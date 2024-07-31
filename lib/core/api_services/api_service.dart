import 'package:dio/dio.dart';

class ApiService {
  final Dio dio;

  ApiService(this.dio);

  String baseUrl = 'https://www.googleapis.com/books/v1/';

  Future<Response> getRequest({
    required String endPoint,
    Map<String, dynamic>? parameters,
  }) async {
    Response response =
        await dio.get('$baseUrl$endPoint', queryParameters: parameters);
    return response;
  }
}
