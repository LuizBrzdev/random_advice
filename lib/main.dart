import 'package:get/get.dart';
import 'package:teste_api/src/modules/home/bindings/home_bindings.dart';
import 'package:teste_api/src/modules/home/routes/home_routes.dart';
import 'package:flutter/material.dart';
import 'package:teste_api/src/modules/home/routes/home_routes_pages.dart';

void main() {
  runApp(GetMaterialApp(
    initialRoute: HomeRoutes.HOME_PAGE,
    getPages: [...HomeRoutesPage.HOME_PAGE],
    debugShowCheckedModeBanner: false,
    initialBinding: HomeBinding(),
  ));
}
