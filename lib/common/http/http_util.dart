import 'package:dio/dio.dart';

class HttpUtil {
  static Map<String, dynamic> handleResponse(Response response) {
    switch (response.statusCode) {
      case 200:
        return _getSuccessResponse(response);
      case 201:
        return _getSuccessResponse(response);
      default:
        throw Exception();
    }
  }

  static Map<String, dynamic> _getSuccessResponse(Response response) {
    final Map<String, dynamic> _responseJson = response.data;

    return _responseJson;
  }
}
