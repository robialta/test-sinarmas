import 'package:food_app/data/datasources/remote/product_remote_datasource.dart';
import 'package:food_app/data/models/product_model.dart';
import 'package:food_app/domain/entities/product_entity.dart';

class ProductRespository {
  final ProductRemoteDataSource remoteDataSource;

  ProductRespository({required this.remoteDataSource});
  Future<List<ProductEntity>> getData() async {
    final Map<String, dynamic> jsonData = await remoteDataSource.getData();
    return ProductModel.fromJsonToList(jsonData['meals']);
  }
}
