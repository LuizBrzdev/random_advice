import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoadingController extends GetxController {
  final RxBool _loading = false.obs;

  bool get loadingState => _loading.value;

  @override
  void onInit() {
    _loading.listen((value) => _showLoading(value));
    super.onInit();
  }

  void isLoading({bool state = true}) {
    _loading(state);
  }

  void _showLoading(bool state) {
    if (state) {
      WidgetsBinding.instance!.addPostFrameCallback((duration) {
        Get.dialog(
          Center(
            child: CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.blueAccent),
              strokeWidth: 5.0,
            ),
          ),
          //barrierDismissible: false,
        );
      });
    } else {
      Get.back();
    }
  }
}
