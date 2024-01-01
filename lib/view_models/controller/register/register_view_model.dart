import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mvvmp1/models/login/user_model.dart';
import 'package:mvvmp1/repository/register_repository/register_repository.dart';
import 'package:mvvmp1/res/routes/routes_name.dart';
import 'package:mvvmp1/utils/utils.dart';
import 'package:mvvmp1/view_models/controller/user_preference/user_preference_view_model.dart';

class RegisterViewModel extends GetxController {
  final _api = RegisterRepository();

  UserPreference userPreference = UserPreference();
  final emailController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;
  final password2Controller = TextEditingController().obs;
  final usernameController = TextEditingController().obs;

  final emailFocusNode = FocusNode().obs;
  final passwordFocusNode = FocusNode().obs;
  final password2FocusNode = FocusNode().obs;
  final usernameFocusNode = FocusNode().obs;

  RxBool loading = false.obs;

  void registerApi() {
    loading.value = true;
    Map data = {
      "email": emailController.value.text,
      "password": passwordController.value.text,
      "password2": password2Controller.value.text,
      "name": usernameController.value.text
    };

    _api.registerApi(data).then((value) {
      loading.value = false;
      print("Outside token check");

      if (value.containsKey("token")) {
        print("Inside token check");
        userPreference.saveUser(UserModel.fromJson(value)).then((value) {
          Get.delete<RegisterViewModel>();
          Get.toNamed(RouteName.homeView);
        }).onError((error, stackTrace) {
          print("error at userPreference");
        });

        Utils.snackBar("success".tr, "successful_login".tr);
      } else {
        print("error at signup");
        Utils.snackBar("error".tr, "error".tr);
      }
    }).onError((error, stackTrace) {
      loading.value = false;

      Utils.snackBar("error".tr, error.toString());
    });
  }
}
