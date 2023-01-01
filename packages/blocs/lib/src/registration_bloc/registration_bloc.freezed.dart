// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'registration_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RegistrationEvent {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) registrationUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? registrationUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? registrationUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RegistrationUserEvent value) registrationUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegistrationUserEvent value)? registrationUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegistrationUserEvent value)? registrationUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegistrationEventCopyWith<RegistrationEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegistrationEventCopyWith<$Res> {
  factory $RegistrationEventCopyWith(
          RegistrationEvent value, $Res Function(RegistrationEvent) then) =
      _$RegistrationEventCopyWithImpl<$Res, RegistrationEvent>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class _$RegistrationEventCopyWithImpl<$Res, $Val extends RegistrationEvent>
    implements $RegistrationEventCopyWith<$Res> {
  _$RegistrationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegistrationUserEventCopyWith<$Res>
    implements $RegistrationEventCopyWith<$Res> {
  factory _$$RegistrationUserEventCopyWith(_$RegistrationUserEvent value,
          $Res Function(_$RegistrationUserEvent) then) =
      __$$RegistrationUserEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$RegistrationUserEventCopyWithImpl<$Res>
    extends _$RegistrationEventCopyWithImpl<$Res, _$RegistrationUserEvent>
    implements _$$RegistrationUserEventCopyWith<$Res> {
  __$$RegistrationUserEventCopyWithImpl(_$RegistrationUserEvent _value,
      $Res Function(_$RegistrationUserEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$RegistrationUserEvent(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RegistrationUserEvent implements RegistrationUserEvent {
  const _$RegistrationUserEvent(this.email, this.password);

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'RegistrationEvent.registrationUser(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegistrationUserEvent &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegistrationUserEventCopyWith<_$RegistrationUserEvent> get copyWith =>
      __$$RegistrationUserEventCopyWithImpl<_$RegistrationUserEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) registrationUser,
  }) {
    return registrationUser(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? registrationUser,
  }) {
    return registrationUser?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? registrationUser,
    required TResult orElse(),
  }) {
    if (registrationUser != null) {
      return registrationUser(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RegistrationUserEvent value) registrationUser,
  }) {
    return registrationUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegistrationUserEvent value)? registrationUser,
  }) {
    return registrationUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegistrationUserEvent value)? registrationUser,
    required TResult orElse(),
  }) {
    if (registrationUser != null) {
      return registrationUser(this);
    }
    return orElse();
  }
}

abstract class RegistrationUserEvent implements RegistrationEvent {
  const factory RegistrationUserEvent(
      final String email, final String password) = _$RegistrationUserEvent;

  @override
  String get email;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$RegistrationUserEventCopyWith<_$RegistrationUserEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RegistrationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() registrationInProgress,
    required TResult Function() registrationSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? registrationInProgress,
    TResult? Function()? registrationSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? registrationInProgress,
    TResult Function()? registrationSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitRegistrationState value) init,
    required TResult Function(RegistrationInProgressState value)
        registrationInProgress,
    required TResult Function(RegistrationSuccessState value)
        registrationSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitRegistrationState value)? init,
    TResult? Function(RegistrationInProgressState value)?
        registrationInProgress,
    TResult? Function(RegistrationSuccessState value)? registrationSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitRegistrationState value)? init,
    TResult Function(RegistrationInProgressState value)? registrationInProgress,
    TResult Function(RegistrationSuccessState value)? registrationSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegistrationStateCopyWith<$Res> {
  factory $RegistrationStateCopyWith(
          RegistrationState value, $Res Function(RegistrationState) then) =
      _$RegistrationStateCopyWithImpl<$Res, RegistrationState>;
}

/// @nodoc
class _$RegistrationStateCopyWithImpl<$Res, $Val extends RegistrationState>
    implements $RegistrationStateCopyWith<$Res> {
  _$RegistrationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitRegistrationStateCopyWith<$Res> {
  factory _$$InitRegistrationStateCopyWith(_$InitRegistrationState value,
          $Res Function(_$InitRegistrationState) then) =
      __$$InitRegistrationStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitRegistrationStateCopyWithImpl<$Res>
    extends _$RegistrationStateCopyWithImpl<$Res, _$InitRegistrationState>
    implements _$$InitRegistrationStateCopyWith<$Res> {
  __$$InitRegistrationStateCopyWithImpl(_$InitRegistrationState _value,
      $Res Function(_$InitRegistrationState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitRegistrationState implements InitRegistrationState {
  const _$InitRegistrationState();

  @override
  String toString() {
    return 'RegistrationState.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitRegistrationState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() registrationInProgress,
    required TResult Function() registrationSuccess,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? registrationInProgress,
    TResult? Function()? registrationSuccess,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? registrationInProgress,
    TResult Function()? registrationSuccess,
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
    required TResult Function(InitRegistrationState value) init,
    required TResult Function(RegistrationInProgressState value)
        registrationInProgress,
    required TResult Function(RegistrationSuccessState value)
        registrationSuccess,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitRegistrationState value)? init,
    TResult? Function(RegistrationInProgressState value)?
        registrationInProgress,
    TResult? Function(RegistrationSuccessState value)? registrationSuccess,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitRegistrationState value)? init,
    TResult Function(RegistrationInProgressState value)? registrationInProgress,
    TResult Function(RegistrationSuccessState value)? registrationSuccess,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class InitRegistrationState implements RegistrationState {
  const factory InitRegistrationState() = _$InitRegistrationState;
}

/// @nodoc
abstract class _$$RegistrationInProgressStateCopyWith<$Res> {
  factory _$$RegistrationInProgressStateCopyWith(
          _$RegistrationInProgressState value,
          $Res Function(_$RegistrationInProgressState) then) =
      __$$RegistrationInProgressStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RegistrationInProgressStateCopyWithImpl<$Res>
    extends _$RegistrationStateCopyWithImpl<$Res, _$RegistrationInProgressState>
    implements _$$RegistrationInProgressStateCopyWith<$Res> {
  __$$RegistrationInProgressStateCopyWithImpl(
      _$RegistrationInProgressState _value,
      $Res Function(_$RegistrationInProgressState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RegistrationInProgressState implements RegistrationInProgressState {
  const _$RegistrationInProgressState();

  @override
  String toString() {
    return 'RegistrationState.registrationInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegistrationInProgressState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() registrationInProgress,
    required TResult Function() registrationSuccess,
  }) {
    return registrationInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? registrationInProgress,
    TResult? Function()? registrationSuccess,
  }) {
    return registrationInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? registrationInProgress,
    TResult Function()? registrationSuccess,
    required TResult orElse(),
  }) {
    if (registrationInProgress != null) {
      return registrationInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitRegistrationState value) init,
    required TResult Function(RegistrationInProgressState value)
        registrationInProgress,
    required TResult Function(RegistrationSuccessState value)
        registrationSuccess,
  }) {
    return registrationInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitRegistrationState value)? init,
    TResult? Function(RegistrationInProgressState value)?
        registrationInProgress,
    TResult? Function(RegistrationSuccessState value)? registrationSuccess,
  }) {
    return registrationInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitRegistrationState value)? init,
    TResult Function(RegistrationInProgressState value)? registrationInProgress,
    TResult Function(RegistrationSuccessState value)? registrationSuccess,
    required TResult orElse(),
  }) {
    if (registrationInProgress != null) {
      return registrationInProgress(this);
    }
    return orElse();
  }
}

abstract class RegistrationInProgressState implements RegistrationState {
  const factory RegistrationInProgressState() = _$RegistrationInProgressState;
}

/// @nodoc
abstract class _$$RegistrationSuccessStateCopyWith<$Res> {
  factory _$$RegistrationSuccessStateCopyWith(_$RegistrationSuccessState value,
          $Res Function(_$RegistrationSuccessState) then) =
      __$$RegistrationSuccessStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RegistrationSuccessStateCopyWithImpl<$Res>
    extends _$RegistrationStateCopyWithImpl<$Res, _$RegistrationSuccessState>
    implements _$$RegistrationSuccessStateCopyWith<$Res> {
  __$$RegistrationSuccessStateCopyWithImpl(_$RegistrationSuccessState _value,
      $Res Function(_$RegistrationSuccessState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RegistrationSuccessState implements RegistrationSuccessState {
  const _$RegistrationSuccessState();

  @override
  String toString() {
    return 'RegistrationState.registrationSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegistrationSuccessState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() registrationInProgress,
    required TResult Function() registrationSuccess,
  }) {
    return registrationSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? registrationInProgress,
    TResult? Function()? registrationSuccess,
  }) {
    return registrationSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? registrationInProgress,
    TResult Function()? registrationSuccess,
    required TResult orElse(),
  }) {
    if (registrationSuccess != null) {
      return registrationSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitRegistrationState value) init,
    required TResult Function(RegistrationInProgressState value)
        registrationInProgress,
    required TResult Function(RegistrationSuccessState value)
        registrationSuccess,
  }) {
    return registrationSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitRegistrationState value)? init,
    TResult? Function(RegistrationInProgressState value)?
        registrationInProgress,
    TResult? Function(RegistrationSuccessState value)? registrationSuccess,
  }) {
    return registrationSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitRegistrationState value)? init,
    TResult Function(RegistrationInProgressState value)? registrationInProgress,
    TResult Function(RegistrationSuccessState value)? registrationSuccess,
    required TResult orElse(),
  }) {
    if (registrationSuccess != null) {
      return registrationSuccess(this);
    }
    return orElse();
  }
}

abstract class RegistrationSuccessState implements RegistrationState {
  const factory RegistrationSuccessState() = _$RegistrationSuccessState;
}
