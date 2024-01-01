import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mvvmp1/res/components/round_button.dart';
import 'package:mvvmp1/utils/utils.dart';
import 'package:mvvmp1/view_models/controller/login/login_view_model.dart';

class LoginButtonWidget extends StatelessWidget {
  final formKey;

  const LoginButtonWidget({super.key, required this.formKey});

  @override
  Widget build(BuildContext context) {
    final loginVM = Get.put(LoginViewModel());
    return Obx(() {
      return RoundButton(
          title: "login".tr,
          width: 200,
          loading: loginVM.loading.value,
          onPress: () {
            if (formKey.currentState!.validate()) {
              loginVM.loginApi();
            }
          });
    });
  }
}
