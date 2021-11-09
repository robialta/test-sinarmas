import 'package:food_app/common/http/http_client.dart';

class ProductRemoteDataSource {
  final HttpCLient httpCLient;

  ProductRemoteDataSource({required this.httpCLient});

  Future<Map<String, dynamic>> getData() async {
    final Map<String, dynamic> result =
        await httpCLient.get('/api/json/v1/1/search.php', params: {'f': 'a'});
    return result;
  }
}
