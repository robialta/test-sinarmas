import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_app/persentation/pages/home_page/bloc/home_bloc.dart';
import 'package:food_app/persentation/pages/home_page/home_page_constants.dart';
import 'package:food_app/persentation/widgets/app_bar.dart';
import 'package:food_app/persentation/widgets/navigation/navigation.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  final HomeBloc _homeBloc = HomeBloc();
  final List<Screen> _screens = HomePageConstants.screens;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomeBloc>(
        create: (context) => _homeBloc,
        child: BlocBuilder<HomeBloc, Screen>(
            builder: (context, state) => Scaffold(
                appBar: AppBarWidget(context),
                bottomNavigationBar: BottomNavigationBarWidget(
                  context,
                  currentIndex: _screens.indexOf(state),
                  onTap: (index) {
                    _homeBloc.navigate(_screens.elementAt(index));
                  },
                ),
                body: state.widget)));
  }
}
