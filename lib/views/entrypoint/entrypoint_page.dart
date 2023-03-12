import 'package:flutter/material.dart';
import 'package:fuel_app/main.dart';
// ignore: unused_import
import 'package:fuel_app/rawscreens/wefound_container_screen/controller/wefound_container_controller.dart';
// ignore: unused_import
import 'package:fuel_app/core/themes/app_export.dart';
// ignore: unused_import
import '../../rawscreens/controller/wefound_container_controller.dart';
// ignore: unused_import
import 'package:get/get.dart';

class EntrypointPage extends StatelessWidget {
  const EntrypointPage({super.key});

 //@override  Widget build(BuildContext context)
 // {  return const Scaffold(    body: Center(child: 
 //Text('Entrypoint Page')),    );  }
 //void dependencies() { Get.lazyPut(() => WefoundContainerController());
  void main() => runApp(const MyApp());

  @override
  Widget build(BuildContext context) {
      return const Scaffold(
        body: Center(child: 
 Text('Entrypoint Page')), 
 ); 
  }
}      //class WefoundContainerBinding extends Bindings {

