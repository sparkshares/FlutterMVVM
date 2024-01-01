import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mvvmp1/models/login/user_model.dart';
import 'package:mvvmp1/repository/login_repository/login_repository.dart';
import 'package:mvvmp1/res/routes/routes_name.dart';
import 'package:mvvmp1/utils/utils.dart';
import 'package:mvvmp1/view_models/controller/user_preference/user_preference_view_model.dart';

class LoginViewModel extends GetxController {
  final _api = LoginRepository();

  UserPreference userPreference = UserPreference();
  final emailController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;

  final emailFocusNode = FocusNode().obs;
  final passwordFocusNode = FocusNode().obs;
  RxBool loading = false.obs;

  void loginApi() {
    loading.value = true;
    Map data = {
      "email": emailController.value.text,
      "password": passwordController.value.text
    };

    _api.loginApi(data).then((value) {
      loading.value = false;
      print("Outside token check");

      if (value.containsKey("token")) {
        print("Inside token check");
        userPreference.saveUser(UserModel.fromJson(value)).then((value) {
          Get.delete<LoginViewModel>();
          Get.toNamed(RouteName.homeView);
        }).onError((error, stackTrace) {
          print("error at userPreference");
        });

        Utils.snackBar("success".tr, "successful_login".tr);
      } else {
        print("error at loginApi");
        Utils.snackBar("error".tr, "error".tr);
      }
    }).onError((error, stackTrace) {
      print("I am in error at loginApi");
      loading.value = false;

      Utils.snackBar("error".tr, error.toString());
    });
  }
}
