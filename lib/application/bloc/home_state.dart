part of 'home_bloc.dart';

//istate class is defined using the freezed package which generates the implementation of the == operator and copyWith methods.
// here will write all possible state which needed for that specific ui

@freezed
class HomeState with _$HomeState {
  const factory HomeState(
      {required List<Result> homeList,
      required List<Result> filtredList,
      required bool isLoading,
      required bool gridView,
      required bool isError}) = _Initial;
// initially giving a state
  factory HomeState.initial() => const HomeState(
      homeList: [],
      filtredList: [],
      isError: false,
      isLoading: false,
      gridView: false);
}
