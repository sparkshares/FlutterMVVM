import 'package:flutter/material.dart';
import 'package:mvvmp1/view/register/widgets/input_email_widget.dart';
import 'package:mvvmp1/view/register/widgets/input_password2_widget.dart';
import 'package:mvvmp1/view/register/widgets/input_password_widget.dart';
import 'package:mvvmp1/view/register/widgets/input_username_widget.dart';
import 'package:mvvmp1/view/register/widgets/register_button_widget.dart';
import 'package:mvvmp1/view_models/controller/register/register_view_model.dart';
import 'package:get/get.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  final _formKey = GlobalKey<FormState>();
  final loginVM = Get.put(RegisterViewModel());

  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Register", style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.teal,
          centerTitle: true,
          iconTheme: IconThemeData(color: Colors.white),
          //automaticallyImplyLeading: false,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Form(
                    key: _formKey,
                    child: Column(children: [
                      InputEmailWidget(),
                      SizedBox(height: 20),
                      InputUsernameWidget(),
                      SizedBox(height: 20),
                      InputPasswordWidget(),
                      SizedBox(height: 20),
                      InputPassword2Widget(),
                    ])),
                SizedBox(height: 40),
                RegisterButtonWidget(formKey: _formKey),
              ]),
        ));
  }
}
