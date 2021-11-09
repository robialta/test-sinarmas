import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_app/persentation/pages/home_page/home_page_constants.dart';

class HomeBloc extends Cubit<Screen> {
  HomeBloc() : super(HomePageConstants.screens.elementAt(0));
  void navigate(Screen screen) {
    emit(screen);
  }
}
