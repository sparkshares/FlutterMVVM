import 'package:mvvmp1/data/network/network_api_services.dart';
import 'package:mvvmp1/res/app_url/app_url.dart';

class RegisterRepository {
  final _apiServices = NetworkApiServices();

  Future<dynamic> registerApi(var data) async {
    dynamic response = await _apiServices.postApi(data, AppUrl.registerApi);
    print("response from login repo =" + response.toString());
    return response;
  }
}
