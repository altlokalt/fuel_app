// ignore_for_file: dead_code

import 'package:flutter/material.dart';
//import 'package:fuel_app/core/routes/app_routes.dart';
import 'core/routes/route_generator.dart';
import 'core/themes/app_themes.dart';

//import 'package:flutter/foundation.dart';
// ignore: unused_import
import 'package:flutter/services.dart';
//import 'core/app_export.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'fuel_app',
      theme: AppTheme.darkTheme,
      onGenerateRoute: RouteGenerator.onGenerate,
      initialRoute: AppRoutes.initial,
      //remove the debug banner
      debugShowCheckedModeBanner: false,
     //  home: const GetMaterialApp(),
    ); 
  }
}

//void logedinuser() { WidgetsFlutterBinding.ensureInitialized(); SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp, ]).then((value) {    runApp(const MyApp());  });}


