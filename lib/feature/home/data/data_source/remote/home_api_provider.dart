import 'package:dio/dio.dart';
import 'package:coin_rate/core/config/constans.dart';
import 'package:coin_rate/core/error_handling/check_exceptions.dart';

class HomeApiProvider {
  Dio dio;
  HomeApiProvider({required this.dio});

  Future<dynamic> fetch10Coin() async {
    final response = await dio
        .get(ApiUrlConstants.top10MarketCoins)
        .onError((DioException error, stackTrace) {
      return CheckExceptions.response(error.response!);
    });

    return response;
  }
}
