import 'dart:async';

import 'package:mvvmp1/res/routes/routes_name.dart';
import 'package:get/get.dart';
import 'package:mvvmp1/view_models/controller/user_preference/user_preference_view_model.dart';

class SplashServices {
  UserPreference userPreference = UserPreference();

  void isLogin() {
    userPreference.getUser().then((value) {
      print("The value of the token is " + value.token.toString());
      if (value.token != null && value.token.toString().isNotEmpty) {
        Timer(
            const Duration(seconds: 3), () => Get.toNamed(RouteName.homeView));
        //const Duration(seconds: 3),
        //() => Get.toNamed(RouteName.registerView));
      } else {
        Timer(
            const Duration(seconds: 3), () => Get.toNamed(RouteName.loginView));
        //const Duration(seconds: 3),
        //() => Get.toNamed(RouteName.registerView));
      }
    });
  }
}
