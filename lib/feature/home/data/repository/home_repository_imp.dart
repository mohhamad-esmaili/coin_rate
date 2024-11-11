import 'package:coin_rate/core/error_handling/app_exception.dart';
import 'package:coin_rate/core/error_handling/check_exceptions.dart';
import 'package:coin_rate/core/error_handling/data_state.dart';
import 'package:coin_rate/feature/home/data/data_source/remote/home_api_provider.dart';
import 'package:coin_rate/feature/home/data/models/coinmodel.dart';
import 'package:coin_rate/feature/home/domain/repository/home_repository.dart';
import 'package:dio/dio.dart';

class HomeRepositoryImp extends HomeRepository {
  HomeApiProvider homeApiProvider;

  HomeRepositoryImp(this.homeApiProvider);

  @override
  Future<DataState<Coinmodel>> loadCoins() async {
    try {
      Response response = await homeApiProvider.fetch10Coin();
      final Coinmodel coinModel = Coinmodel.fromJson(response.data);
      return DataSuccess(coinModel);
    } on AppException catch (e) {
      return await CheckExceptions.getError(e);
    }
  }
}
