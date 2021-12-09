import 'package:get/get.dart';
import 'package:teste_api/src/modules/home/controller/home_controller.dart';
import 'package:teste_api/src/modules/home/repositories/home_repositry.dart';
import 'package:teste_api/src/modules/utils/loading.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController(Get.find(), Get.find()));
    Get.lazyPut(() => HomeRepository());
    Get.lazyPut(() => LoadingController());
    //Get.lazyPut(() => )
  }
}
