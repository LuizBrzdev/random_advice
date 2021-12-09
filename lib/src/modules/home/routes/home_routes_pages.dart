import 'package:get/get.dart';
import 'package:teste_api/src/modules/home/bindings/home_bindings.dart';
import 'package:teste_api/src/modules/home/page/home_page.dart';
import 'package:teste_api/src/modules/home/routes/home_routes.dart';

class HomeRoutesPage {
  static final ROUTES = <GetPage>[...HOME_PAGE];
  static final HOME_PAGE = [
    GetPage(
      name: HomeRoutes.HOME_PAGE,
      page: () => HomePage(),
      binding: HomeBinding(),
    ),
  ];
}
