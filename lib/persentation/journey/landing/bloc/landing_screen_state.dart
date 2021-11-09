import 'package:food_app/domain/entities/product_entity.dart';

abstract class LandingScreenState {
  final List<ProductEntity>? products;
  final String? errorMessage;

  LandingScreenState({this.products, this.errorMessage});
}

class LandingScreenInitState extends LandingScreenState {}

class LandingScreenLoadingState extends LandingScreenState {}

class LandingScreenLoadedState extends LandingScreenState {
  LandingScreenLoadedState(List<ProductEntity>? products)
      : super(products: products);
}

class LandingScreenErrorState extends LandingScreenState {
  LandingScreenErrorState(String? errorMessage)
      : super(errorMessage: errorMessage);
}
