import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mvvmp1/utils/utils.dart';
import 'package:mvvmp1/view_models/controller/register/register_view_model.dart';

class InputUsernameWidget extends StatelessWidget {
  const InputUsernameWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final registerVM = Get.put(RegisterViewModel());

    return TextFormField(
      controller: registerVM.usernameController.value,
      focusNode: registerVM.usernameFocusNode.value,
      validator: (value) {
        if (value!.isEmpty) {
          Utils.snackBar("Username is empty", "Empty username".tr);
        }
      },
      onFieldSubmitted: (value) {
        Utils.fieldFocusChange(context, registerVM.emailFocusNode.value,
            registerVM.usernameFocusNode.value);
      },
      decoration: InputDecoration(
          hintText: "Enter username", border: OutlineInputBorder()),
    );
  }
}
