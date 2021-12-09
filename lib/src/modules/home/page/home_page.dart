import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teste_api/src/modules/home/controller/home_controller.dart';

class HomePage extends GetView<HomeController> {
  //bool isLoading = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Center(
          child: Text('Random Advice'),
        ),
      ),
      body: Center(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 150,
            ),
            const Text(
              'Your Advice is',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w200),
            ),
            SizedBox(
              height: 50,
            ),
            Obx(
              () => Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    controller.adviceString,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextButton(
                onPressed: () => controller.loadAdvices(), child: Text('Request Another Advice'))
          ],
        ),
      ),
    );
  }
}
