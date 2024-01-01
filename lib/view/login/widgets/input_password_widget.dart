import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mvvmp1/utils/utils.dart';
import 'package:mvvmp1/view_models/controller/login/login_view_model.dart';

class InputPasswordWidget extends StatelessWidget {
  const InputPasswordWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final loginVM = Get.put(LoginViewModel());

    return TextFormField(
      controller: loginVM.passwordController.value,
      focusNode: loginVM.passwordFocusNode.value,
      obscureText: true,
      obscuringCharacter: "*",
      validator: (value) {
        if (value!.isEmpty) {
          Utils.snackBar("password".tr, "empty_password".tr);
        }
      },
      onFieldSubmitted: (value) {
        Utils.fieldFocusChange(context, loginVM.emailFocusNode.value,
            loginVM.passwordFocusNode.value);
      },
      decoration: InputDecoration(
          hintText: "password_hint".tr, border: OutlineInputBorder()),
    );
  }
}
