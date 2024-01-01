import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mvvmp1/res/components/round_button.dart';
import 'package:mvvmp1/utils/utils.dart';
import 'package:mvvmp1/view_models/controller/login/login_view_model.dart';
import 'package:mvvmp1/view_models/controller/register/register_view_model.dart';

class RegisterButtonWidget extends StatelessWidget {
  final formKey;

  const RegisterButtonWidget({super.key, required this.formKey});

  @override
  Widget build(BuildContext context) {
    final registerVM = Get.put(RegisterViewModel());
    return Obx(() {
      return RoundButton(
          title: "Register",
          width: 200,
          loading: registerVM.loading.value,
          onPress: () {
            if (formKey.currentState!.validate()) {
              registerVM.registerApi();
            }
          });
    });
  }
}
