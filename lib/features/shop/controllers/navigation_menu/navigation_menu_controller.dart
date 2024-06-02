import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:dokan/features/shop/shop.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavigationMenuController extends GetxController {
  static NavigationMenuController get instance => Get.find();

  final Rx<int> _currentIndex = 0.obs;

  int get selectedIndex => _currentIndex.value;

  GlobalKey<CurvedNavigationBarState> bottomNavKey = GlobalKey();

  void onChangeIndex(int index) {
    _currentIndex.value = index;
  }

  final screens = [
    const HomeScreen(),
    Container(),
    Container(),
    Container(),
    Container(),
  ];
}
