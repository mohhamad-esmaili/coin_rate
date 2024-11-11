import 'package:coin_rate/core/error_handling/data_state.dart';
import 'package:coin_rate/feature/home/data/models/coinmodel.dart';

abstract class HomeRepository {
  Future<DataState<Coinmodel>> loadCoins();
}
