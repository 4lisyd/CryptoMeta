import 'package:dio/dio.dart';
import 'package:cookie_jar/cookie_jar.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:flutter/foundation.dart';

class TokenHelper extends ChangeNotifier {
  TokenHelper() {
    getToken();
  }

  var xsrf;
  var cookie;
  var dioObj;

  Future getToken() async {
    var dio = Dio();

    var cookieJar = CookieJar();
    dio.interceptors.add(CookieManager(cookieJar));

    try {
      var response = await dio.get(
        'https://meta.qpro.pk/sanctum/csrf-cookie',
      );
      dioObj = dio;
      cookie = response.headers["set-cookie"]!;
      xsrf = response.headers["set-cookie"]!
              .toString()
              .split(";")[0]
              .split("=")[1]
              .split("%")[0] +
          '=';
    } catch (e) {
      print('happens1230023');
    }

    // notifyListeners();
  }
}
