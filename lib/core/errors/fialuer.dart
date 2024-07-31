import 'package:dio/dio.dart';

abstract class Failure {
  final String errorMessage;

  const Failure(this.errorMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errorMessage);

  factory ServerFailure.fromError(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure("Connection timeout with api server.");
      case DioExceptionType.sendTimeout:
        return ServerFailure("Send timeout with api server .");
      case DioExceptionType.receiveTimeout:
        return ServerFailure(" Receive time out with api server .");
      case DioExceptionType.badCertificate:
        return ServerFailure("Bad certificate ");
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
            dioError.response!.statusCode!, dioError.response);
      case DioExceptionType.cancel:
        return ServerFailure("Request was canceled");
      case DioExceptionType.connectionError:
        return ServerFailure("No internet connection ");
      case DioExceptionType.unknown:
        return ServerFailure("unknown error , please try again ");
      default:
        return ServerFailure('Oops there was an Error ');
    }
  }

  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure("method not found ");
    } else if (statusCode == 500) {
      return ServerFailure("Internal server error , please try later ");
    } else {
      return ServerFailure('Oops there was an Error ');
    }
  }
}
