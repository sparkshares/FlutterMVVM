import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:mvvmp1/data/app_exceptions.dart';
import 'package:mvvmp1/data/network/base_api_services.dart';
import 'package:http/http.dart' as http;

class NetworkApiServices extends BaseApiServices {
  @override
  Future<dynamic> getApi(String url) async {
    dynamic responseJson;
    try {
      final response =
          await http.get(Uri.parse(url)).timeout(const Duration(seconds: 10));

      responseJson = returnResponse(response);
    } on SocketException {
      throw InternetException("");
    } on RequestTimeOut {
      throw RequestTimeOut("");
    }
    print(responseJson);
    return responseJson;
  }

  Future<dynamic> postApi(var data, String url) async {
    if (kDebugMode) {
      // print(url);
      //  print(data);
    }
    print("The received response is = $data");

    dynamic responseJson;
    try {
      final response = await http
          .post(
            Uri.parse(url),
            body: data,
          )
          .timeout(const Duration(seconds: 10));

      responseJson = returnResponse(response);
    } on SocketException {
      throw InternetException("");
    } on RequestTimeOut {
      throw RequestTimeOut("");
    }
    return responseJson;
  }

  dynamic returnResponse(http.Response response) {
    print(response.body.toString());
    print(response.statusCode.toString());
    switch (response.statusCode) {
      case 200:
        dynamic responseJson = jsonDecode(response.body);
        return responseJson;

      case 400:
        throw InvalidUrlException();

      default:
        throw FetchDataException(
            "Error occured while Communication with Server" +
                response.statusCode.toString());
    }
  }
}
