import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_app/common/injector/injector.dart';
import 'package:food_app/common/theme/theme_color.dart';
import 'package:food_app/domain/entities/product_entity.dart';
import 'package:food_app/persentation/journey/landing/bloc/landing_screen_bloc.dart';
import 'package:food_app/persentation/journey/landing/bloc/landing_screen_state.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({Key? key}) : super(key: key);

  @override
  _LandingScreenState createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  late LandingScreenDataBloc _landingScreenDataBloc;
  late List<ProductEntity>? _products;

  @override
  void initState() {
    super.initState();
    _landingScreenDataBloc = Injector.resolve<LandingScreenDataBloc>()..add(1);
  }

  @override
  Widget build(BuildContext context) => BlocProvider<LandingScreenDataBloc>(
        create: (context) => _landingScreenDataBloc,
        child: BlocBuilder<LandingScreenDataBloc, LandingScreenState>(
          builder: (context, state) {
            switch (state.runtimeType) {
              case LandingScreenInitState:
              case LandingScreenLoadingState:
                return _buildLoading;

              case LandingScreenLoadedState:
                _products = state.products;
                return _buildLoaded;

              case LandingScreenErrorState:
                return _buildError(state.errorMessage);
            }

            return const Center(child: Text('Unknown state'));
          },
        ),
      );

  Center _buildError(String? errorMessage) => Center(
        child: Text(errorMessage!),
      );

  Center get _buildLoading => const Center(
        child: CircularProgressIndicator(),
      );

  Container get _buildLoaded => Container(
      alignment: Alignment.topCenter,
      color: AppColor.primaryColor,
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: _products!.length,
              itemBuilder: (context, index) {
                final item = _products!.elementAt(index);
                return Container(
                  height: 190,
                  padding: const EdgeInsets.all(13),
                  margin: const EdgeInsets.only(bottom: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: const Color(0xff2D2D2D),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Flexible(
                            child: Text(
                              item.strMeal!,
                              style: Theme.of(context)
                                  .textTheme
                                  .headline5!
                                  .copyWith(color: Colors.white),
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Chip(
                            label: Text(item.strCategory!),
                            backgroundColor: const Color(0xffFFE598),
                          )
                        ],
                      )),
                      Expanded(
                        child: Center(
                          child: CircleAvatar(
                            radius: 175,
                            foregroundImage: NetworkImage(item.strMealThumb!),
                          ),
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ));
}
