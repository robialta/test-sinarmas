import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_app/domain/usecases/product_usecase.dart';
import 'package:food_app/persentation/journey/landing/bloc/landing_screen_state.dart';

class LandingScreenDataBloc extends Bloc<int, LandingScreenState> {
  final ProductUserCase userCase;
  LandingScreenDataBloc({required this.userCase})
      : super(LandingScreenInitState()) {
    on<int>((event, emit) async {
      emit(LandingScreenLoadingState());
      try {
        final result = await userCase.getData();
        emit(LandingScreenLoadedState(result));
      } catch (e) {
        emit(LandingScreenErrorState(e.toString()));
      }
    });
  }
}
