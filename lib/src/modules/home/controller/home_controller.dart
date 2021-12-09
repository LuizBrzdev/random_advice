import 'package:get/get.dart';

import 'package:teste_api/src/modules/home/models/home_slip_model.dart';
import 'package:teste_api/src/modules/home/repositories/home_repositry.dart';
import 'package:teste_api/src/modules/utils/loading.dart';

class HomeController extends GetxController {
  final HomeRepository _homeRepository;
  final RxString _adviceString = ''.obs;
  final LoadingController _isLoading;

  String get adviceString => _adviceString.value;

  HomeController(
    this._homeRepository,
    this._isLoading,
  );

  @override
  onInit() {
    super.onInit();
    loadAdvices();
  }

  Future<String> loadAdvices() async {
    _isLoading.isLoading();
    final request = await _homeRepository.requestAdvice();
    _isLoading.isLoading(state: false);
    return _adviceString.value = request.slip!.advice.toString();
  }
}
