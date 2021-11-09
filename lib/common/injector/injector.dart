import 'package:food_app/common/http/http_client.dart';
import 'package:food_app/data/datasources/remote/product_remote_datasource.dart';
import 'package:food_app/domain/repositories/product_repository.dart';
import 'package:food_app/domain/usecases/product_usecase.dart';
import 'package:food_app/persentation/journey/landing/bloc/landing_screen_bloc.dart';
import 'package:kiwi/kiwi.dart';

class Injector {
  static late KiwiContainer container;

  void setup() {
    container = KiwiContainer();
    inject();
  }

  void inject() {
    _injectBloc();
    _injectUseCase();
    _injectRepository();
    _injectDataSource();
    _injectExternal();
  }

  _injectBloc() {
    container.registerFactory((container) =>
        LandingScreenDataBloc(userCase: container<ProductUserCase>()));
  }

  _injectUseCase() {
    container.registerFactory((container) =>
        ProductUserCase(respository: container<ProductRespository>()));
  }

  _injectRepository() {
    container.registerFactory((container) => ProductRespository(
        remoteDataSource: container<ProductRemoteDataSource>()));
  }

  _injectDataSource() {
    container.registerFactory((container) =>
        ProductRemoteDataSource(httpCLient: container<HttpCLient>()));
  }

  _injectExternal() {
    container.registerSingleton((container) => HttpCLient());
  }

  static final T Function<T>([String name]) resolve = container.resolve;
}
