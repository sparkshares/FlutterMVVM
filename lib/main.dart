import 'package:flutter/material.dart';
import 'package:mvvmp1/res/getx_localization/languages.dart';
import 'package:mvvmp1/res/routes/routes.dart';
import 'package:mvvmp1/view/splash_screen.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      translations: Languages(),
      locale: Locale('en', 'US'),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
      getPages: AppRoutes.appRoutes().toList(),
    );
  }
}
