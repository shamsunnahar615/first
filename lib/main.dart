import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_app/app_route.dart';
import 'package:test_app/dependency_injaction.dart';

void main() {
  dependencyInjection de = dependencyInjection();
  de.dependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoute.splashScreen,
      navigatorKey: Get.key,
      getPages: AppRoute.routes,
    );
  }
}
