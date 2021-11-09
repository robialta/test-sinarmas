import 'package:food_app/domain/entities/product_entity.dart';
import 'package:food_app/domain/repositories/product_repository.dart';

class ProductUserCase {
  final ProductRespository respository;

  ProductUserCase({required this.respository});

  Future<List<ProductEntity>> getData() => respository.getData();
}
