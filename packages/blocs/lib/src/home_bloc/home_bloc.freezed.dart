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
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String text) search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(String text)? search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String text)? search,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitHomeEvent value) init,
    required TResult Function(SearchHomeEvent value) search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitHomeEvent value)? init,
    TResult? Function(SearchHomeEvent value)? search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitHomeEvent value)? init,
    TResult Function(SearchHomeEvent value)? search,
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
abstract class _$$InitHomeEventCopyWith<$Res> {
  factory _$$InitHomeEventCopyWith(
          _$InitHomeEvent value, $Res Function(_$InitHomeEvent) then) =
      __$$InitHomeEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitHomeEventCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$InitHomeEvent>
    implements _$$InitHomeEventCopyWith<$Res> {
  __$$InitHomeEventCopyWithImpl(
      _$InitHomeEvent _value, $Res Function(_$InitHomeEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitHomeEvent implements InitHomeEvent {
  const _$InitHomeEvent();

  @override
  String toString() {
    return 'HomeEvent.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitHomeEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String text) search,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(String text)? search,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String text)? search,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitHomeEvent value) init,
    required TResult Function(SearchHomeEvent value) search,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitHomeEvent value)? init,
    TResult? Function(SearchHomeEvent value)? search,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitHomeEvent value)? init,
    TResult Function(SearchHomeEvent value)? search,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class InitHomeEvent implements HomeEvent {
  const factory InitHomeEvent() = _$InitHomeEvent;
}

/// @nodoc
abstract class _$$SearchHomeEventCopyWith<$Res> {
  factory _$$SearchHomeEventCopyWith(
          _$SearchHomeEvent value, $Res Function(_$SearchHomeEvent) then) =
      __$$SearchHomeEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String text});
}

/// @nodoc
class __$$SearchHomeEventCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$SearchHomeEvent>
    implements _$$SearchHomeEventCopyWith<$Res> {
  __$$SearchHomeEventCopyWithImpl(
      _$SearchHomeEvent _value, $Res Function(_$SearchHomeEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
  }) {
    return _then(_$SearchHomeEvent(
      null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchHomeEvent implements SearchHomeEvent {
  const _$SearchHomeEvent(this.text);

  @override
  final String text;

  @override
  String toString() {
    return 'HomeEvent.search(text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchHomeEvent &&
            (identical(other.text, text) || other.text == text));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchHomeEventCopyWith<_$SearchHomeEvent> get copyWith =>
      __$$SearchHomeEventCopyWithImpl<_$SearchHomeEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String text) search,
  }) {
    return search(text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(String text)? search,
  }) {
    return search?.call(text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String text)? search,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitHomeEvent value) init,
    required TResult Function(SearchHomeEvent value) search,
  }) {
    return search(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitHomeEvent value)? init,
    TResult? Function(SearchHomeEvent value)? search,
  }) {
    return search?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitHomeEvent value)? init,
    TResult Function(SearchHomeEvent value)? search,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(this);
    }
    return orElse();
  }
}

abstract class SearchHomeEvent implements HomeEvent {
  const factory SearchHomeEvent(final String text) = _$SearchHomeEvent;

  String get text;
  @JsonKey(ignore: true)
  _$$SearchHomeEventCopyWith<_$SearchHomeEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<UserChat> listUser) init,
    required TResult Function() loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<UserChat> listUser)? init,
    TResult? Function()? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<UserChat> listUser)? init,
    TResult Function()? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitHomeState value) init,
    required TResult Function(LoadingHomeState value) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitHomeState value)? init,
    TResult? Function(LoadingHomeState value)? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitHomeState value)? init,
    TResult Function(LoadingHomeState value)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitHomeStateCopyWith<$Res> {
  factory _$$InitHomeStateCopyWith(
          _$InitHomeState value, $Res Function(_$InitHomeState) then) =
      __$$InitHomeStateCopyWithImpl<$Res>;
  @useResult
  $Res call({List<UserChat> listUser});
}

/// @nodoc
class __$$InitHomeStateCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$InitHomeState>
    implements _$$InitHomeStateCopyWith<$Res> {
  __$$InitHomeStateCopyWithImpl(
      _$InitHomeState _value, $Res Function(_$InitHomeState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listUser = null,
  }) {
    return _then(_$InitHomeState(
      listUser: null == listUser
          ? _value._listUser
          : listUser // ignore: cast_nullable_to_non_nullable
              as List<UserChat>,
    ));
  }
}

/// @nodoc

class _$InitHomeState implements InitHomeState {
  const _$InitHomeState({required final List<UserChat> listUser})
      : _listUser = listUser;

  final List<UserChat> _listUser;
  @override
  List<UserChat> get listUser {
    if (_listUser is EqualUnmodifiableListView) return _listUser;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listUser);
  }

  @override
  String toString() {
    return 'HomeState.init(listUser: $listUser)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitHomeState &&
            const DeepCollectionEquality().equals(other._listUser, _listUser));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_listUser));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitHomeStateCopyWith<_$InitHomeState> get copyWith =>
      __$$InitHomeStateCopyWithImpl<_$InitHomeState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<UserChat> listUser) init,
    required TResult Function() loading,
  }) {
    return init(listUser);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<UserChat> listUser)? init,
    TResult? Function()? loading,
  }) {
    return init?.call(listUser);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<UserChat> listUser)? init,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(listUser);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitHomeState value) init,
    required TResult Function(LoadingHomeState value) loading,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitHomeState value)? init,
    TResult? Function(LoadingHomeState value)? loading,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitHomeState value)? init,
    TResult Function(LoadingHomeState value)? loading,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class InitHomeState implements HomeState {
  const factory InitHomeState({required final List<UserChat> listUser}) =
      _$InitHomeState;

  List<UserChat> get listUser;
  @JsonKey(ignore: true)
  _$$InitHomeStateCopyWith<_$InitHomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingHomeStateCopyWith<$Res> {
  factory _$$LoadingHomeStateCopyWith(
          _$LoadingHomeState value, $Res Function(_$LoadingHomeState) then) =
      __$$LoadingHomeStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingHomeStateCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$LoadingHomeState>
    implements _$$LoadingHomeStateCopyWith<$Res> {
  __$$LoadingHomeStateCopyWithImpl(
      _$LoadingHomeState _value, $Res Function(_$LoadingHomeState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingHomeState implements LoadingHomeState {
  const _$LoadingHomeState();

  @override
  String toString() {
    return 'HomeState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingHomeState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<UserChat> listUser) init,
    required TResult Function() loading,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<UserChat> listUser)? init,
    TResult? Function()? loading,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<UserChat> listUser)? init,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitHomeState value) init,
    required TResult Function(LoadingHomeState value) loading,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitHomeState value)? init,
    TResult? Function(LoadingHomeState value)? loading,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitHomeState value)? init,
    TResult Function(LoadingHomeState value)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingHomeState implements HomeState {
  const factory LoadingHomeState() = _$LoadingHomeState;
}
