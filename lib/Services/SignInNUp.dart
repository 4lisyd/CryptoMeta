import 'package:dio/dio.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:cookie_jar/cookie_jar.dart';

class CurrentUserService {
  String email = ""; // considers the unique identifier.
  String phone = "null";
  String password = "null";

  void getHttp() async {
    var dio = Dio();
    var cookieJar = CookieJar();
    dio.interceptors.add(CookieManager(cookieJar));

    var xsrf = "";
    var cookie;

    try {
      var response = await dio.get(
        'https://meta.qpro.pk/sanctum/csrf-cookie',

        // data: {'email': "ali@gmail.com", 'password': 'wendu'},
      );
      // print(await cookieJar.loadForRequest(Uri.parse("https://meta.qpro.pk/")));

      // xsrf = response.headers["set-cookie"].asMap()
      // print(response.headers["XSRF-TOKEN"]);

      var cookie = response.headers["set-cookie"];
      // print(response.headers["set-cookie"]);
      xsrf = response.headers["set-cookie"]
              .toString()
              .split(";")[0]
              .split("=")[1]
              .split("%")[0] +
          '=';

      // print(xsrf);
      // xsrf = "${xsrf.]}=";
      // xsrf =
      //     "eyJpdiI6IkU1cHN4c0xidEs0S1ltRlJMeTF1SVE9PSIsInZhbHVlIjoiV2gvWkhBNy9KNXZ3TkZFaXhWQmdscEZEL2NWR2lxREhnRkx6eStjTmxZK1VqYzY5S1V6S0VGa094RENXN";

      // var decoded = Uri.decodeComponent(xsrf);
      // print("decoooooded " + decoded);
      // xsrf = {"iv":"y8lTYbsK+qWka1YEsMZvMg==","value":"DwuOTbhBhPC0q+JiyS9VQiznSrM1Uos/cgPrkjj1lCUxf44I/SwVhLjzI95vp27/USH6FmL1LpFydksTcqtuHBA91qp4h35z0seeeaYRzKLj9jPOhSWUwbdOncNwnwqJ","mac":"b466e8c11c0c353f8a61e3d1af497fbce329a6b4081b2e2ae881d4620e1acc4f","tag":""}.toString()

    } catch (e) {
      // print(e);
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
            'X-XSRF-TOKEN': xsrf,
            "Host": "meta.qpro.pk",
            "Accept": "application/json",
            "Accept-Encoding": "gzip, deflate, br",
            // "set-cookie": cookie,
          },
        ),
      );
      print("SUCCESSSSSS12");
      print(response.data);
    } catch (e) {
      if (e is DioError) {
        //handle DioError here by error type or by error code
        print(e.response);
      }
      // print(e);
      // print(response.data);
      // print(e.toString());
    }
  }
}
