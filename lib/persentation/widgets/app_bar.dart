import 'package:flutter/material.dart';
import 'package:food_app/common/constants/layout_constants.dart';
import 'package:food_app/common/theme/theme_color.dart';

class AppBarWidget extends AppBar {
  AppBarWidget(BuildContext context, {Key? key})
      : super(
          key: key,
          elevation: LayoutConstants.dimen_0,
          backgroundColor: AppColor.primaryColor,
          actions: [
            Expanded(
                child: Center(
              child: Padding(
                padding: const EdgeInsets.only(
                    left: LayoutConstants.dimen_10, right: 4),
                child: TextField(
                  cursorColor: AppColor.primaryColor,
                  decoration: InputDecoration(
                      constraints: const BoxConstraints(maxHeight: 39),
                      contentPadding:
                          const EdgeInsets.only(top: LayoutConstants.dimen_16),
                      filled: true,
                      fillColor: Colors.white,
                      prefixIconConstraints:
                          const BoxConstraints(maxHeight: 39),
                      prefixIcon: const Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: LayoutConstants.dimen_7),
                        child: Icon(
                          Icons.search_outlined,
                          color: Colors.grey,
                        ),
                      ),
                      hintText: 'Cari Iphone 13',
                      isDense: true,
                      focusedBorder: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.circular(LayoutConstants.dimen_10),
                          borderSide: BorderSide.none),
                      enabledBorder: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.circular(LayoutConstants.dimen_10),
                          borderSide:
                              BorderSide(color: Colors.grey.withOpacity(0.7)))),
                ),
              ),
            )),
            IconButton(
                constraints: const BoxConstraints(maxHeight: 35, maxWidth: 35),
                onPressed: () {},
                icon: const Icon(Icons.mail_outline_outlined)),
            IconButton(
                constraints: const BoxConstraints(maxHeight: 35, maxWidth: 35),
                onPressed: () {},
                icon: const Icon(Icons.notifications_none_outlined)),
            IconButton(
                constraints: const BoxConstraints(maxHeight: 35, maxWidth: 35),
                onPressed: () {},
                icon: const Icon(Icons.shopping_cart_outlined)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
          ],
        );
}
