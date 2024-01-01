import 'package:mvvmp1/res/routes/routes_name.dart';
import 'package:mvvmp1/view/home/home_view.dart';
import 'package:mvvmp1/view/login/login_view.dart';
import 'package:mvvmp1/view/register/register_view.dart';
import 'package:mvvmp1/view/splash_screen.dart';
import 'package:get/get.dart';

class AppRoutes {
  static appRoutes() => {
        GetPage(
            name: RouteName.splashScreen,
            page: () => SplashScreen(),
            transitionDuration: Duration(milliseconds: 250),
            transition: Transition.leftToRightWithFade),
        GetPage(
            name: RouteName.loginView,
            page: () => LoginView(),
            transitionDuration: Duration(milliseconds: 250),
            transition: Transition.leftToRightWithFade),
        GetPage(
            name: RouteName.homeView,
            page: () => HomeView(),
            transitionDuration: Duration(milliseconds: 250),
            transition: Transition.leftToRightWithFade),
        GetPage(
            name: RouteName.registerView,
            page: () => RegisterView(),
            transitionDuration: Duration(milliseconds: 250),
            transition: Transition.leftToRightWithFade),
      };
}
