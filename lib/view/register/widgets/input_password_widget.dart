import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mvvmp1/utils/utils.dart';
import 'package:mvvmp1/view_models/controller/register/register_view_model.dart';

class InputPasswordWidget extends StatelessWidget {
  const InputPasswordWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final registerVM = Get.put(RegisterViewModel());

    return TextFormField(
      controller: registerVM.passwordController.value,
      focusNode: registerVM.passwordFocusNode.value,
      obscureText: true,
      obscuringCharacter: "*",
      validator: (value) {
        if (value!.isEmpty) {
          Utils.snackBar("password".tr, "empty_password".tr);
        }
      },
      onFieldSubmitted: (value) {
        Utils.fieldFocusChange(context, registerVM.emailFocusNode.value,
            registerVM.passwordFocusNode.value);
      },
      decoration: InputDecoration(
          hintText: "password_hint".tr, border: OutlineInputBorder()),
    );
  }
}
