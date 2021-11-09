import 'package:flutter/material.dart';
import 'package:food_app/common/constants/route_constants.dart';
import 'package:food_app/persentation/pages/home_page/home_page.dart';
import 'package:food_app/persentation/pages/login_page/login_page.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final uri = Uri.parse(settings.name!);

    switch (uri.path) {
      case RouteList.home:
        return MaterialPageRoute(
            settings: settings, builder: (BuildContext context) => HomePage());
      case RouteList.login:
        return MaterialPageRoute(
            settings: settings,
            builder: (BuildContext context) => const LoginPage());
      default:
        return throw Exception('Route name is incorrect.');
    }
  }
}
