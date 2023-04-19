import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:test_project/domain/home/home_service.dart';
import 'package:test_project/domain/home/models/home/home_list/home_list.dart';
import 'package:test_project/domain/home/models/home/home_list/result.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

//this class  is responsible for managing the state of the home screen using the BLoC architecture

// this annotation which means this class is candidate for di
@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  // injectiing login service to the constructor of login bloc
  final HomeService _homeService;
  HomeBloc(this._homeService) : super(HomeState.initial()) {
    // on funtion is overide function .it is responsible for handling event and emittin state
    on<LoadInitialListData>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      print('call started.....');

      // calling home servie abstract class funtion

//and checkign the result is success or not with help of dart package funtion fold
      final _result = await _homeService.getHomeListData(event.value);
      print(_result.toString());
      final _state = _result.fold(
          (l) => state.copyWith(isError: true),
          (r) => state.copyWith(
                isLoading: false,
                homeList: r.results,
              ));
// this eimit funtion will update the current state of bloc
      emit(_state);
    });

// this block of code for changing the views
    on<ChangeView>((event, emit) async {
      emit(state.copyWith(isLoading: true));

      final _state = state.copyWith(isLoading: false, gridView: event.value);

      emit(_state);
    });

// with this function help sorting the search quesies
    on<Search>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      emit(state.copyWith(filtredList: []));

      print('search called');
      List<Result> filteredUsers = state.homeList
          .where((user) =>
              user.title
                  .toString()
                  .toLowerCase()
                  .trim()
                  .contains(event.value.toLowerCase().trim()) ||
              user.byline
                  .toString()
                  .toLowerCase()
                  .trim()
                  .contains(event.value.toLowerCase().trim()))
          .toList();
      inspect(filteredUsers);

      final _state = state.copyWith(isLoading: false, homeList: filteredUsers);
      print(state);

      emit(_state);
    });
  }
}
