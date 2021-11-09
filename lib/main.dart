import 'package:flutter/material.dart';
import 'package:food_app/common/injector/injector.dart';
import 'package:food_app/persentation/app.dart';

void main() {
  Injector().setup();
  runApp(const App());
}
