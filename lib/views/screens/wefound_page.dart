import 'package:flutter/material.dart';
// ignore: unnecessary_import
import 'package:flutter/widgets.dart';
// ignore: unused_import
import 'package:fuel_app/rawscreens/wefound_container_screen/controller/wefound_container_controller.dart';
import 'package:fuel_app/core/themes/app_export.dart';


// ignore: unused_import
import '../../rawscreens/controller/wefound_container_controller.dart';
import 'package:get/get.dart';

abstract class WefoundContainerBinding extends Bindings {
  // Define your controller code here
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        body: Center(
          child: ElevatedButton(
            child: const Text('Tap me'),
            onPressed: () {
              // Get the MyController singleton instance
              
              // Do something with myController
            },
          ),
        ),
      ),
    );
  }
}
// RxController
// Register MyController or WefoundContainerController as a lazy singleton
void dependencies() {
  //Get.lazyPut(() => WefoundContainerController());
}
