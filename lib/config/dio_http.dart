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

  /// Default Get Request
  static Future<Either<String, Map<String, dynamic>>> getReq({
    required String url,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? body,
  }) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final token = prefs.getString('user-token') ?? '';

    /// Headers
    Map<String, dynamic> headers = {
      'Authorization': 'Bearer $token',
    };

    /// Result
    try {
      PrintHelper.printWhite('GET: $url <- ${request.options.baseUrl}');
      PrintHelper.printWhite("QUERY PARAMETERS : $queryParameters");
      PrintHelper.printWhite("BODY : $body");

      final res = await DioHttp.request.get(
        url,
        options: Options(headers: headers),
        queryParameters: queryParameters,
        data: body,
      );

      if (res.data is List<dynamic>) {
        final newData = {'data': res.data};
        return Right(newData);
      } else {
        return Right(
          res.data is Map<String, dynamic> ? res.data : <String, dynamic>{},
        );
      }
    } on DioError catch (e) {
      /// Error Handler
      return Left(errorHandler(e: e, url: url)!);
    }

    /// Unknown Error
    catch (e) {
      PrintHelper.printError("URL : $url\nERROR : $e");
      return Left("Unknown Error : $e");
    }
  }

  /// Default Post Request
  static Future<Either<String, Map<String, dynamic>>> postReq({
    required String url,
    required dynamic body,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? additionalHeaders,
    Map<String, dynamic>? newHeaders,
  }) async {
    /// Headers
    Map<String, dynamic> headers = newHeaders ??
        {
          // 'Authorization':
          //     'Bearer ${getIt<SharedPreferenceHelper>().getAccessToken()}',
        };

    if (additionalHeaders != null) {
      headers.addAll(additionalHeaders);
    }

    PrintHelper.printWhite('POST: $url <- ${request.options.baseUrl}');
    PrintHelper.printWhite(
        body is FormData ? body.files.toString() : jsonEncode(body));

    /// Result
    try {
      final res = await DioHttp.request.post(
        url,
        data: body,
        options: Options(headers: headers),
        queryParameters: queryParameters,
      );

      PrintHelper.printWhite(jsonEncode(res.data));

      return Right(
        res.data is Map<String, dynamic> ? res.data : <String, dynamic>{},
      );
    } on DioError catch (e) {
      /// Error Handler
      return Left(errorHandler(e: e, url: url)!);
    }

    /// Unknown Error
    catch (e) {
      PrintHelper.printError("URL : $url\nERROR : $e");
      return Left("Unknown Error : $e");
    }
  }

  // ignore: body_might_complete_normally_nullable
  /// Error Condition Handler
  static String? errorHandler({required DioError e, required String url}) {
    /// If error message is from server or server returns 502.
    if (e.response != null &&
        !e.response.toString().contains("<html>") &&
        (e.response?.data is Map<String, dynamic> ||
            e.response?.data is Map<String, dynamic>?)) {
      /// Print Error Data
      PrintHelper.printError('${e.response?.data ?? "Unknown Error $e"}');

      /// Parsed Error Data
      // final error = parseErrorModel(e.response?.data);

      /// Return parsed error data
      // return error.fold(
      //   (l) => l,
      //   (r) {
      //     /// If the errorCode is 4033, then re-check the auth
      //     if (r.error?.errorCode == 4033) {
      //       getIt<AuthBloc>().add(
      //         const CekAutenticate(
      //           forceLogout: true,
      //           errorMessage:
      //               'Keluar Otomatis!!! Akun anda digunakan di perangkat lainnya.',
      //         ),
      //       );
      //     }

      //     /// If the errorCode is 3 (UnAuthorized Access), then re-check the auth
      //     if (r.error?.errorCode == 3) {
      //       getIt<AuthBloc>().add(
      //         const CekAutenticate(
      //           forceLogout: true,
      //           errorMessage: 'Autentikasi Gagal',
      //         ),
      //       );
      //     }

      //     PrintHelper.printError(
      //         "URL : $url\nERROR : ${r.error?.message ?? 'Unknown Error'}");

      //     return r.error?.message ??
      //         e.response?.data['message']?.toString() ??
      //         "Unknown Error";
      //   },
      // );
    }

    /// If connection is timed out
    else if (e.type == DioErrorType.connectionTimeout ||
        e.type == DioErrorType.receiveTimeout ||
        e.type == DioErrorType.sendTimeout) {
      return "Connection timed out";
    }

    /// Server returns 502
    else if (e.response.toString().contains("<html>")) {
      return "Terjadi gangguan pada server, mohon coba lagi nanti";
    }

    /// If error has a message, use that message
    else if (e.response?.data['message'] != null) {
      return "${e.response?.data['message']}";
    }

    /// Other DIO Error
    else {
      PrintHelper.printError("URL : $url\nERROR : ${e.message}");
      if (e.error is SocketException) {
        return "Gagal memuat data, mohon coba lagi nanti";
      }
      return e.message ?? "EEM-02 : Unknown Error. Mohon coba lagi nanti.";
    }
    return null;
  }
}
