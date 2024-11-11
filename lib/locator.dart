import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:coin_rate/feature/home/presentation/bloc/home_bloc.dart';
import 'package:coin_rate/feature/home/domain/repository/home_repository.dart';
import 'package:coin_rate/feature/home/domain/use_case/load_data_usecase.dart';
import 'package:coin_rate/feature/home/data/repository/home_repository_imp.dart';
import 'package:coin_rate/feature/home/data/data_source/remote/home_api_provider.dart';

GetIt locator = GetIt.instance;

setupLocator() async {
  locator.registerSingleton<Dio>(Dio());

  /// api providers
  locator
      .registerSingleton<HomeApiProvider>(HomeApiProvider(dio: locator<Dio>()));

  /// repositories
  locator.registerSingleton<HomeRepository>(HomeRepositoryImp(locator()));

  /// usecases

  locator.registerSingleton<Get10TopCoinsUseCase>(
    Get10TopCoinsUseCase(locator<HomeRepository>()),
  );

  /// blocs
  locator.registerSingleton<HomeBloc>(HomeBloc(locator()));
}
