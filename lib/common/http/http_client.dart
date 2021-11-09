import 'package:dio/dio.dart';
import 'package:food_app/common/http/http_util.dart';

class HttpCLient {
  final Dio _client = Dio();
  final String? _host;

  HttpCLient({String? host}) : _host = host ?? 'https://themealdb.com';

  String _parsedUri(String path) => '$_host$path';

  Future<Map<String, dynamic>> get(String path,
      {Map<String, dynamic>? params}) async {
    final Response response =
        await _client.get(_parsedUri(path), queryParameters: params);
    return HttpUtil.handleResponse(response);
  }
}
