import 'package:coin_rate/core/error_handling/data_state.dart';
import 'package:dio/dio.dart';

import 'app_exception.dart';

class CheckExceptions {
  static dynamic response(Response response) {
    switch (response.statusCode) {
      case 200:
        return response;
      case 400:
        throw BadRequestException(response: response);
      case 401:
        throw UnauthorisedException();
      case 404:
        throw NotFoundException();
      case 500:
        throw ServerException();
      default:
        throw FetchDataException(
            message: "${response.statusCode}fetch exception");
    }
  }

  static dynamic getError(AppException appException) async {
    switch (appException.runtimeType) {
      /// return error came from server
      case BadRequestException _:
        return DataFailed(appException.message);

      case NotFoundException _:
        return DataFailed(appException.message);

      /// get refresh token and call api again
      case UnauthorisedException _:
        return DataFailed(appException.message);

      /// server error
      case ServerException _:
        return DataFailed(appException.message);

      /// dio or timeout and etc error
      case FetchDataException _:
        return DataFailed(appException.message);
    }
  }
}
