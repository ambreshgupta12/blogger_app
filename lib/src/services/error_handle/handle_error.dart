import 'dart:convert';
import 'dart:io';

import 'package:blogger_app/src/models/error/error_response.dart';
import 'package:dio/dio.dart';

class HandleError{


 String handleError(error) {
  if (error is Exception) {
    try {
      String? errorDescription = "";
      if (error is DioError) {
        switch (error.type) {
          case DioErrorType.cancel:
            errorDescription = "Request cancelled";
            break;
          case DioErrorType.connectTimeout:
            errorDescription = "Connection timeout";
            break;
          case DioErrorType.receiveTimeout:
            errorDescription = "Receive timeout in connection with API server";
            break;
          case DioErrorType.response:
            switch (error.response!.statusCode) {
              case 400:
                errorDescription =  ErrorResponse.fromJson((json.decode(json.encode(error.response!.data)))).result!.message;//getError(error.response);
                break;
              case 401:
                errorDescription = ErrorResponse.fromJson((json.decode(json.encode(error.response!.data)))).message;
                break;
              case 403:
                errorDescription = getError(error.response);
                break;
              case 404:
                errorDescription =
                    ErrorResponse.fromJson((json.decode(json.encode(error.response!.data))))
                        .message;
                break;
              case 409:
                errorDescription = getError(error.response);
                break;
              case 408:
                errorDescription = getError(error.response);
                break;
              case 500:
                errorDescription = getError(error.response);
                break;
              case 503:
                errorDescription = getError(error.response);
                break;
              default:
                errorDescription =
                "Received invalid status code: ${error.response!.statusCode}";
            }
            break;
          case DioErrorType.sendTimeout:
            errorDescription = "Send timeout in connection with API server";
            break;
          case DioErrorType.other:
            errorDescription = "No internet connection.";
            break;
        }
      } else if (error is SocketException) {
        errorDescription = "No internet connection";
      } else {
        errorDescription = "Unexpected error occured";
      }
      return errorDescription!;
    } on FormatException catch (e) {
      print(e.toString());
      throw FormatException("Unable to process the data");
    } catch (e) {
      return "Unexpected error occured";
    }
  } else {
    if (error.toString().contains("is not a subtype of")) {
      return "Unable to process the data";
    } else {
      return "Unexpected error occured";
    }
  }
}

 String? getError(Response? response) {
  print("response.statusMessage ${response!.statusMessage}");
  if (response.data != null && response.data is Map) {
    String errorMessageHeading =
    (json.decode(json.encode(response.data)))["message"];
    if (errorMessageHeading == "QueryError" ||
        errorMessageHeading == "SearchError" ||
        errorMessageHeading == "BindError" ||
        errorMessageHeading == "CreateError" ||
        errorMessageHeading == "ReadError") {
      String? errors = ErrorResponse.fromJson((json.decode(json.encode(response.data)))).message;


      try {
//        return json.decode(errors)["detail"];
        return errors;
      } catch (e) {
        return (jsonEncode(errors));
      }
    } else
      return errorMessageHeading;
  } else {
    return "404 " + response.statusMessage!;
  }
}
}

