part of 'home_bloc.dart';

// this is event class what ever events are comming from home screen those all will take care
@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.loadInitialListData(String value) =
      LoadInitialListData;

  const factory HomeEvent.changeView(bool value) = ChangeView;

  const factory HomeEvent.search(String value) = Search;
}
