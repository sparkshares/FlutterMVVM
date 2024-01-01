import 'package:flutter/material.dart';
import 'package:mvvmp1/data/app_exceptions.dart';
import 'package:mvvmp1/res/assets/image_assets.dart';
import 'package:mvvmp1/res/components/general_exception.dart';
import 'package:mvvmp1/res/components/internet_exceptions_widget.dart';
import 'package:mvvmp1/res/components/round_button.dart';
import 'package:mvvmp1/utils/utils.dart';
import 'package:get/get.dart';
import 'package:mvvmp1/view_models/controller/user_preference/user_preference_view_model.dart';
import 'package:mvvmp1/view_models/services/splash_services.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  SplashServices splashServices = SplashServices();

  @override
  void initState() {
    super.initState();

    splashServices.isLogin();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Center(
          child: Text("welcome_back".tr,
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, fontSize: 20))),
    );
  }
}
