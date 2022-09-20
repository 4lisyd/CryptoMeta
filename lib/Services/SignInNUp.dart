import 'package:dio/dio.dart';

class CurrentUserService {
  String email = ""; // considers the unique identifier.
  String phone = "null";
  String password = "null";

  void getHttp() async {
    var dio = Dio();

    var xsrf = "";
    try {
      var response = await dio.get(
        'https://meta.qpro.pk/sanctum/csrf-cookie',
        // data: {'email': "ali@gmail.com", 'password': 'wendu'},
      );
      // xsrf = response.headers["set-cookie"].asMap()
      // print(response.headers["set-cookie"]);
      xsrf = response.headers["set-cookie"]
              .toString()
              .split(";")[0]
              .split("=")[1]
              .split("%")[0] +
          "=";
      // xsrf = xsrf[0:-3] + "=";
      print(xsrf);
    } catch (e) {
      print(e);
    }

    try {
      var response = await dio.post(
        'https://meta.qpro.pk/v1/login/',
        data: {
          'email': "ali@gmail.com",
          'password': 'wessdsndu',
        },
        options: Options(
          headers: {
            'X-CSRF-TOKEN': xsrf,
            "Host": "meta.qpro.pk",
            "Accept": "application/json",

            // "": "",

            // 'X-CSRF-TOKEN': xsrf,
          },
        ),
      );
      print("SUCCESSSSSS");
      print(response);
    } catch (e) {
      print(e);
    }
  }
}
