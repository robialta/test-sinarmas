import 'package:flutter/material.dart';
import 'package:food_app/common/constants/layout_constants.dart';
import 'package:food_app/common/theme/theme_color.dart';
import 'package:food_app/persentation/pages/home_page/home_page_constants.dart';

class BottomNavigationBarWidget extends BottomNavigationBar {
  BottomNavigationBarWidget(BuildContext context,
      {Key? key, required Function(int) onTap, required int currentIndex})
      : super(
            key: key,
            currentIndex: currentIndex,
            showUnselectedLabels: true,
            selectedItemColor: AppColor.primaryColor,
            unselectedItemColor: Colors.grey,
            selectedFontSize: LayoutConstants.dimen_10,
            unselectedFontSize: LayoutConstants.dimen_10,
            enableFeedback: false,
            type: BottomNavigationBarType.fixed,
            onTap: onTap,
            items: HomePageConstants.screens
                .map((e) => BottomNavigationBarItem(
                      icon: Icon(e.iconData),
                      label: e.label,
                    ))
                .toList());
}
