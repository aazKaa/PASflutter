import 'package:get/get.dart';
import 'package:pasazka/pages/detail_makanan_page.dart';
import 'package:pasazka/pages/list_makanan_page.dart';
import 'package:pasazka/pages/login_page.dart';
import 'package:pasazka/pages/main_menu_page.dart';
import 'package:pasazka/pages/menu_drawer.dart';

class Routes {
  // list variabel nama halaman
  static const String login = "/login";
  static const String confirm_registration = "/confirm_registration";
  static const String list_makanan = "/list_makanan";
  static const String detail_makanan = '/detail-makanan';
  static const String main_menu = '/main_menu';
  static const String drawer = '/drawer';
  static const String kuliner = '/kuliner';
  static const String detail_kuliner = '/detail-kuliner';
  // others pages here

  // untuk kita daftarkan di main dart, isinya array page yang kita punya
  static final pages = [
    GetPage(
      name: list_makanan,
      page: () => ListMakananPage()
    ),
    GetPage(
      name: detail_makanan,
      page: () => DetailMakananPage()
    ),
    GetPage(
      name: main_menu,
      page: () => MainMenuPage()
    ),
    GetPage(
      name: drawer,
      page: () => MenuDrawer()
    ),
    GetPage(
      name: login,
      page: () => LoginPage()
    ),
    GetPage(
      name: list_makanan,
      page: () => ListMakananPage()
    ),
        GetPage(
      name: detail_makanan,
      page: () => DetailMakananPage()
    ),
  ];

  static List<GetPage<dynamic>>? get myPages => null;
}