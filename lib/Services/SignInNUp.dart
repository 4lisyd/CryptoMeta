import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:cookie_jar/cookie_jar.dart';
import 'package:flutter/material.dart';

import 'BackendMisc/TokenHelper.dart';

class CurrentUserService extends ChangeNotifier {
  String email = ""; // considers the unique identifier.
  String phone = "null";
  String password = "null";
  // DioError errorResponse = DioError(requestOptions: RequestOptions(path: '/'));

  TokenHelper tokenHelper = TokenHelper();

  dynamic signInUser({required String email, required String password}) async {
    print(email + password);
    print(tokenHelper.dioObj.toString());
    print(email + password);
    var dio = tokenHelper.dioObj;

    try {
      var response = await dio.post(
        'https://meta.qpro.pk/v1/login/',
        data: {
          'email': email,
          'password': password,
        },
        options: Options(headers: {
          'X-XSRF-TOKEN': tokenHelper.xsrf,
          "Host": "meta.qpro.pk",
          "Accept": "application/json",
          "Accept-Encoding": "gzip, deflate, br",
          "set-cookie": tokenHelper.cookie,
        }),
      );
      print("Dioxxxxxxn method");
      // var decoded = jsonDecode(response.toString());
      // return decoded;
    } catch (e) {
      print(e.toString());

      if (e is DioError) {
        //handle DioError here by error type or by error code
        print("Dio_error signinNup sign in method");
        return (e.response.toString());
      }
    }
  }

  dynamic registerUser(
      {required String name,
      required String email,
      required String phone,
      required String password,
      required userParticipationIntent}) async {
    await tokenHelper.getToken();
    var cookie = tokenHelper.cookie;
    String xsrf = tokenHelper.xsrf;
    var dio = tokenHelper.dioObj;

    try {
      var response = await dio.post(
        'https://meta.qpro.pk/v1/register/',
        options: Options(
          headers: {
            'X-XSRF-TOKEN': tokenHelper.xsrf,

            "Accept": "application/json",
            "Accept-Encoding": "gzip, deflate, br",
            "set-cookie": tokenHelper.cookie,
            // "first_name":,
            // "last_name":,
            // "email":,
            // "password":,
          },
        ),
      );
    } catch (e) {}
  }

  dynamic logOutUser() async {
    var cookie = tokenHelper.cookie;
    String xsrf = tokenHelper.xsrf;
    var dio = tokenHelper.dioObj;

    // print(dio + "exeeerf");

    try {
      var response = dio.get(
        'https://meta.qpro.pk/v1/logout/',
        options: Options(
          headers: {
            'X-XSRF-TOKEN': tokenHelper.xsrf,
            // "Host": "meta.qpro.pk",
            "Accept": "application/json",
            "Accept-Encoding": "gzip, deflate, br",
            "set-cookie": tokenHelper.cookie,
          },
        ),
      );
      print(await response.toString() + 'sdss2030923');
      // return response;

      var decoded = jsonDecode(response.toString());
      return decoded;
    } catch (e) {
      if (e is DioError) {
        //handle DioError here by error type or by error code
        print("error also occurs");
        return (e.response);
      }
    }
  }
}
