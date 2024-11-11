part of 'home_bloc.dart';

sealed class HomeState {}

class HomeDataInitial extends HomeState {}

class HomeDataLoading extends HomeState {}

class HomeDataCompleted extends HomeState {
  final Coinmodel coinmodel;
  HomeDataCompleted(this.coinmodel);
}

class HomeDataError extends HomeState {
  final String errorMessage;
  HomeDataError(this.errorMessage);
}
