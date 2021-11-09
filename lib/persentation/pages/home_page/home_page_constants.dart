import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:food_app/persentation/journey/landing/landing_screen.dart';
import 'package:food_app/persentation/journey/other/other_screen.dart';

class HomePageConstants {
  static const List<Screen> screens = [
    Screen(
        widget: LandingScreen(), label: 'Home', iconData: Icons.home_outlined),
    Screen(
        widget: OtherScreen(), label: 'Other', iconData: Icons.image_outlined),
    Screen(
        widget: OtherScreen(),
        label: 'Other',
        iconData: Icons.store_mall_directory_outlined),
    Screen(
        widget: OtherScreen(),
        label: 'Other',
        iconData: Icons.favorite_border_outlined),
    Screen(
        widget: OtherScreen(),
        label: 'Other',
        iconData: Icons.receipt_outlined),
  ];
}

class Screen extends Equatable {
  final Widget widget;
  final String label;
  final IconData iconData;

  const Screen(
      {required this.widget, required this.label, required this.iconData});

  @override
  List<Object?> get props => [label];
}
