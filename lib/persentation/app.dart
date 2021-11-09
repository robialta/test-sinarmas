import 'package:flutter/material.dart';
import 'package:food_app/common/constants/route_constants.dart';
import 'package:food_app/common/theme/theme_data.dart';
import 'package:food_app/persentation/route.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food App',
      theme: AppThemeData.defaultTheme,
      initialRoute: RouteList.home,
      onGenerateRoute: Routes.generateRoute,
    );
  }
}
