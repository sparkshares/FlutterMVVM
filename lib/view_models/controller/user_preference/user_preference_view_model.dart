import "package:shared_preferences/shared_preferences.dart";
import 'package:mvvmp1/models/login/user_model.dart';

class UserPreference {
  Future<bool> saveUser(UserModel responseModel) async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    sp.setString("token", responseModel.token!.access.toString());
    return true;
  }

  Future<UserModel> getUser() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    String? accessToken = sp.getString("token");
    Token? token = accessToken != null ? Token(access: accessToken) : null;
    return UserModel(token: token, msg: "success");
  }

  Future<bool> removeUser() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    sp.clear();
    print("Shared pref is cleared");
    return true;
  }
}
