import 'package:mvvmp1/data/network/network_api_services.dart';
import 'package:mvvmp1/models/home/user_list_model.dart';
import 'package:mvvmp1/models/login/user_model.dart';
import 'package:mvvmp1/res/app_url/app_url.dart';

class HomeRepository {
  final _apiServices = NetworkApiServices();

  Future<UserListModel> userListApi() async {
    dynamic response = await _apiServices.getApi(AppUrl.userListApi);
    return UserListModel.fromJson(response);
  }
}
