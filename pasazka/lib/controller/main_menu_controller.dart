import 'package:flutter/widgets.dart';
import 'package:pasazka/menu/feat_page.dart';
import 'package:pasazka/menu/home_page.dart';
import 'package:pasazka/menu/profile_page.dart';
import 'package:get/get.dart';

class MainMenuController extends GetxController {
  final RxInt selectedIndex = 0.obs;

  void changePage(int index) {
    selectedIndex.value = index;
  }

  List<Widget> listPages = [HomePage(), FeatPage(), ProfilePage()];
}