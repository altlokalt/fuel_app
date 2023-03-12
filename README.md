# upgrade your package dependencies to the latest versions
flutter pub upgrade --major-versions
or
flutter pub get

dart .
flutter pub outdated

flutter pub upgrade

# fuel_app
# evertyhing is done in main.dart...under lib folder 

flutter devices
flutter run

cltr + f5 run without debugging
# To hot restart changes while running
press "r" or "R".

## Getting Started
For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

# Run with --stacktrace option to get the stack trace.
 --enable-software-rendering
> Run with --info or --debug option to get more log output.
> Run with --scan to get full insights.

import 'package:flutter/material.dart';
  
  void main() => runApp(const MyApp());
  
  class MyApp extends StatelessWidget {
    const MyApp({super.key});
  
    @override
    Widget build(BuildContext context) {
      return MaterialApp(
        title: 'Material App',
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Material App Bar'),
          ),
          body: const Center(
            child: Text('Hello World'),
          ),
        ),
      );
    }
  }
