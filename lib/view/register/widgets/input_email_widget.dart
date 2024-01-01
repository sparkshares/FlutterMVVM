import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mvvmp1/utils/utils.dart';
import 'package:mvvmp1/view_models/controller/register/register_view_model.dart';

class InputEmailWidget extends StatelessWidget {
  const InputEmailWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final registerVM = Get.put(RegisterViewModel());

    return TextFormField(
      controller: registerVM.emailController.value,
      focusNode: registerVM.emailFocusNode.value,
      validator: (value) {
        if (value!.isEmpty) {
          Utils.snackBar("email".tr, "empty_email".tr);
        }
      },
      onFieldSubmitted: (value) {
        Utils.fieldFocusChange(context, registerVM.emailFocusNode.value,
            registerVM.passwordFocusNode.value);
      },
      decoration: InputDecoration(
          hintText: "email_hint".tr, border: OutlineInputBorder()),
    );
  }
}
