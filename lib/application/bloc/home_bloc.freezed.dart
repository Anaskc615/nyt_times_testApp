// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeEvent {
  Object get value => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) loadInitialListData,
    required TResult Function(bool value) changeView,
    required TResult Function(String value) search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value)? loadInitialListData,
    TResult? Function(bool value)? changeView,
    TResult? Function(String value)? search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? loadInitialListData,
    TResult Function(bool value)? changeView,
    TResult Function(String value)? search,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadInitialListData value) loadInitialListData,
    required TResult Function(ChangeView value) changeView,
    required TResult Function(Search value) search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadInitialListData value)? loadInitialListData,
    TResult? Function(ChangeView value)? changeView,
    TResult? Function(Search value)? search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadInitialListData value)? loadInitialListData,
    TResult Function(ChangeView value)? changeView,
    TResult Function(Search value)? search,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadInitialListDataCopyWith<$Res> {
  factory _$$LoadInitialListDataCopyWith(_$LoadInitialListData value,
          $Res Function(_$LoadInitialListData) then) =
      __$$LoadInitialListDataCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$LoadInitialListDataCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$LoadInitialListData>
    implements _$$LoadInitialListDataCopyWith<$Res> {
  __$$LoadInitialListDataCopyWithImpl(
      _$LoadInitialListData _value, $Res Function(_$LoadInitialListData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$LoadInitialListData(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadInitialListData implements LoadInitialListData {
  const _$LoadInitialListData(this.value);

  @override
  final String value;

  @override
  String toString() {
    return 'HomeEvent.loadInitialListData(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadInitialListData &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadInitialListDataCopyWith<_$LoadInitialListData> get copyWith =>
      __$$LoadInitialListDataCopyWithImpl<_$LoadInitialListData>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) loadInitialListData,
    required TResult Function(bool value) changeView,
    required TResult Function(String value) search,
  }) {
    return loadInitialListData(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value)? loadInitialListData,
    TResult? Function(bool value)? changeView,
    TResult? Function(String value)? search,
  }) {
    return loadInitialListData?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? loadInitialListData,
    TResult Function(bool value)? changeView,
    TResult Function(String value)? search,
    required TResult orElse(),
  }) {
    if (loadInitialListData != null) {
      return loadInitialListData(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadInitialListData value) loadInitialListData,
    required TResult Function(ChangeView value) changeView,
    required TResult Function(Search value) search,
  }) {
    return loadInitialListData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadInitialListData value)? loadInitialListData,
    TResult? Function(ChangeView value)? changeView,
    TResult? Function(Search value)? search,
  }) {
    return loadInitialListData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadInitialListData value)? loadInitialListData,
    TResult Function(ChangeView value)? changeView,
    TResult Function(Search value)? search,
    required TResult orElse(),
  }) {
    if (loadInitialListData != null) {
      return loadInitialListData(this);
    }
    return orElse();
  }
}

abstract class LoadInitialListData implements HomeEvent {
  const factory LoadInitialListData(final String value) = _$LoadInitialListData;

  @override
  String get value;
  @JsonKey(ignore: true)
  _$$LoadInitialListDataCopyWith<_$LoadInitialListData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeViewCopyWith<$Res> {
  factory _$$ChangeViewCopyWith(
          _$ChangeView value, $Res Function(_$ChangeView) then) =
      __$$ChangeViewCopyWithImpl<$Res>;
  @useResult
  $Res call({bool value});
}

/// @nodoc
class __$$ChangeViewCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$ChangeView>
    implements _$$ChangeViewCopyWith<$Res> {
  __$$ChangeViewCopyWithImpl(
      _$ChangeView _value, $Res Function(_$ChangeView) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$ChangeView(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ChangeView implements ChangeView {
  const _$ChangeView(this.value);

  @override
  final bool value;

  @override
  String toString() {
    return 'HomeEvent.changeView(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeView &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeViewCopyWith<_$ChangeView> get copyWith =>
      __$$ChangeViewCopyWithImpl<_$ChangeView>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) loadInitialListData,
    required TResult Function(bool value) changeView,
    required TResult Function(String value) search,
  }) {
    return changeView(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value)? loadInitialListData,
    TResult? Function(bool value)? changeView,
    TResult? Function(String value)? search,
  }) {
    return changeView?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? loadInitialListData,
    TResult Function(bool value)? changeView,
    TResult Function(String value)? search,
    required TResult orElse(),
  }) {
    if (changeView != null) {
      return changeView(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadInitialListData value) loadInitialListData,
    required TResult Function(ChangeView value) changeView,
    required TResult Function(Search value) search,
  }) {
    return changeView(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadInitialListData value)? loadInitialListData,
    TResult? Function(ChangeView value)? changeView,
    TResult? Function(Search value)? search,
  }) {
    return changeView?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadInitialListData value)? loadInitialListData,
    TResult Function(ChangeView value)? changeView,
    TResult Function(Search value)? search,
    required TResult orElse(),
  }) {
    if (changeView != null) {
      return changeView(this);
    }
    return orElse();
  }
}

abstract class ChangeView implements HomeEvent {
  const factory ChangeView(final bool value) = _$ChangeView;

  @override
  bool get value;
  @JsonKey(ignore: true)
  _$$ChangeViewCopyWith<_$ChangeView> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchCopyWith<$Res> {
  factory _$$SearchCopyWith(_$Search value, $Res Function(_$Search) then) =
      __$$SearchCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$SearchCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$Search>
    implements _$$SearchCopyWith<$Res> {
  __$$SearchCopyWithImpl(_$Search _value, $Res Function(_$Search) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$Search(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$Search implements Search {
  const _$Search(this.value);

  @override
  final String value;

  @override
  String toString() {
    return 'HomeEvent.search(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Search &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchCopyWith<_$Search> get copyWith =>
      __$$SearchCopyWithImpl<_$Search>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) loadInitialListData,
    required TResult Function(bool value) changeView,
    required TResult Function(String value) search,
  }) {
    return search(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value)? loadInitialListData,
    TResult? Function(bool value)? changeView,
    TResult? Function(String value)? search,
  }) {
    return search?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? loadInitialListData,
    TResult Function(bool value)? changeView,
    TResult Function(String value)? search,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadInitialListData value) loadInitialListData,
    required TResult Function(ChangeView value) changeView,
    required TResult Function(Search value) search,
  }) {
    return search(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadInitialListData value)? loadInitialListData,
    TResult? Function(ChangeView value)? changeView,
    TResult? Function(Search value)? search,
  }) {
    return search?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadInitialListData value)? loadInitialListData,
    TResult Function(ChangeView value)? changeView,
    TResult Function(Search value)? search,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(this);
    }
    return orElse();
  }
}

abstract class Search implements HomeEvent {
  const factory Search(final String value) = _$Search;

  @override
  String get value;
  @JsonKey(ignore: true)
  _$$SearchCopyWith<_$Search> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeState {
  List<Result> get homeList => throw _privateConstructorUsedError;
  List<Result> get filtredList => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get gridView => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call(
      {List<Result> homeList,
      List<Result> filtredList,
      bool isLoading,
      bool gridView,
      bool isError});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? homeList = null,
    Object? filtredList = null,
    Object? isLoading = null,
    Object? gridView = null,
    Object? isError = null,
  }) {
    return _then(_value.copyWith(
      homeList: null == homeList
          ? _value.homeList
          : homeList // ignore: cast_nullable_to_non_nullable
              as List<Result>,
      filtredList: null == filtredList
          ? _value.filtredList
          : filtredList // ignore: cast_nullable_to_non_nullable
              as List<Result>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      gridView: null == gridView
          ? _value.gridView
          : gridView // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Result> homeList,
      List<Result> filtredList,
      bool isLoading,
      bool gridView,
      bool isError});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? homeList = null,
    Object? filtredList = null,
    Object? isLoading = null,
    Object? gridView = null,
    Object? isError = null,
  }) {
    return _then(_$_Initial(
      homeList: null == homeList
          ? _value._homeList
          : homeList // ignore: cast_nullable_to_non_nullable
              as List<Result>,
      filtredList: null == filtredList
          ? _value._filtredList
          : filtredList // ignore: cast_nullable_to_non_nullable
              as List<Result>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      gridView: null == gridView
          ? _value.gridView
          : gridView // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(
      {required final List<Result> homeList,
      required final List<Result> filtredList,
      required this.isLoading,
      required this.gridView,
      required this.isError})
      : _homeList = homeList,
        _filtredList = filtredList;

  final List<Result> _homeList;
  @override
  List<Result> get homeList {
    if (_homeList is EqualUnmodifiableListView) return _homeList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_homeList);
  }

  final List<Result> _filtredList;
  @override
  List<Result> get filtredList {
    if (_filtredList is EqualUnmodifiableListView) return _filtredList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filtredList);
  }

  @override
  final bool isLoading;
  @override
  final bool gridView;
  @override
  final bool isError;

  @override
  String toString() {
    return 'HomeState(homeList: $homeList, filtredList: $filtredList, isLoading: $isLoading, gridView: $gridView, isError: $isError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            const DeepCollectionEquality().equals(other._homeList, _homeList) &&
            const DeepCollectionEquality()
                .equals(other._filtredList, _filtredList) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.gridView, gridView) ||
                other.gridView == gridView) &&
            (identical(other.isError, isError) || other.isError == isError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_homeList),
      const DeepCollectionEquality().hash(_filtredList),
      isLoading,
      gridView,
      isError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);
}

abstract class _Initial implements HomeState {
  const factory _Initial(
      {required final List<Result> homeList,
      required final List<Result> filtredList,
      required final bool isLoading,
      required final bool gridView,
      required final bool isError}) = _$_Initial;

  @override
  List<Result> get homeList;
  @override
  List<Result> get filtredList;
  @override
  bool get isLoading;
  @override
  bool get gridView;
  @override
  bool get isError;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
