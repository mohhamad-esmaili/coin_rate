import 'package:bloc/bloc.dart';
import 'package:coin_rate/core/error_handling/data_state.dart';
import 'package:coin_rate/feature/home/data/models/coinmodel.dart';

import 'package:coin_rate/feature/home/domain/use_case/load_data_usecase.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final Get10TopCoinsUseCase get10TopCoinsUseCase;

  HomeBloc(this.get10TopCoinsUseCase) : super(HomeDataInitial()) {
    on<Load10TopCoins>((event, emit) async {
      emit(HomeDataLoading());

      DataState dataState = await get10TopCoinsUseCase();
      if (dataState is DataSuccess) {
        emit(HomeDataCompleted(dataState.data));
      } else {
        emit(HomeDataError(dataState.error!));
      }
    });
  }
}
