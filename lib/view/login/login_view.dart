import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mvvmp1/res/components/round_button.dart';
import 'package:mvvmp1/res/routes/routes.dart';
import 'package:mvvmp1/res/routes/routes_name.dart';
import 'package:mvvmp1/utils/utils.dart';
import 'package:mvvmp1/view/login/widgets/input_email_widget.dart';
import 'package:mvvmp1/view/login/widgets/input_password_widget.dart';
import 'package:mvvmp1/view/login/widgets/login_button_widget.dart';
import 'package:mvvmp1/view_models/controller/login/login_view_model.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final loginVM = Get.put(LoginViewModel());
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.teal,
            centerTitle: true,
            title: Text("Login".tr, style: TextStyle(color: Colors.white)),
            automaticallyImplyLeading: false,
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Get.toNamed(RouteName.registerView);
                            },
                            child: Text("New Here? Register ",
                                style: TextStyle(
                                    color: Colors.blue, fontSize: 17)),
                          ),
                          SizedBox(height: 20),
                          InputEmailWidget(),
                          SizedBox(
                            height: 20,
                          ),
                          InputPasswordWidget(),
                        ],
                      )),
                  SizedBox(
                    height: 40,
                  ),
                  LoginButtonWidget(formKey: _formKey),
                ]),
          ),
        ));
  }
}
