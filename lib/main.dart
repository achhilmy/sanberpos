import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sanber_pos/config/router/page_routes.dart';
import 'package:sanber_pos/ui/pages/pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashPages(),
      getPages: PageRoutesApp.pages,
    );
  }
}
