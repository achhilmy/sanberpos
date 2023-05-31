part of 'config.dart';

class DioHttp {
  // this is standarized request for everyone
  static Map<String, dynamic> headers = {
    "Accept": "application/json",
    "Content-Type": 'application/json',
  };

  static Dio request = Dio(
    BaseOptions(
      // validateStatus: (status) => status! <= 500,
      baseUrl: baseUrl,
      headers: headers,
    ),
  );
}
