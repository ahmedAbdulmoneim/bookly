import 'package:dio/dio.dart';

class ApiService {
  final Dio _dio;

  ApiService(this._dio);

  String baseUrl = 'https://www.googleapis.com/books/v1/';

  Future<Response> getRequest({
    required String endPoint,

  }) async {
    Response response =
        await _dio.get('$baseUrl$endPoint');
    return response;
  }
}
