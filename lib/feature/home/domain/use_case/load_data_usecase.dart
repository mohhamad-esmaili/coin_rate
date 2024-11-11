import 'package:coin_rate/core/error_handling/data_state.dart';
import 'package:coin_rate/core/use_case/use_case.dart';
import 'package:coin_rate/feature/home/data/models/coinmodel.dart';
import 'package:coin_rate/feature/home/domain/repository/home_repository.dart';

class Get10TopCoinsUseCase extends NoParams {
  final HomeRepository homeRepository;

  Get10TopCoinsUseCase(this.homeRepository);

  Future<DataState<Coinmodel>> call() {
    return homeRepository.loadCoins();
  }
}
