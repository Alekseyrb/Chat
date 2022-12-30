// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoginEvent {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) logIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? logIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? logIn,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LogInEvent value) logIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LogInEvent value)? logIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LogInEvent value)? logIn,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginEventCopyWith<LoginEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginEventCopyWith<$Res> {
  factory $LoginEventCopyWith(
          LoginEvent value, $Res Function(LoginEvent) then) =
      _$LoginEventCopyWithImpl<$Res, LoginEvent>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class _$LoginEventCopyWithImpl<$Res, $Val extends LoginEvent>
    implements $LoginEventCopyWith<$Res> {
  _$LoginEventCopyWithImpl(this._value, this._then);

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
abstract class _$$LogInEventCopyWith<$Res>
    implements $LoginEventCopyWith<$Res> {
  factory _$$LogInEventCopyWith(
          _$LogInEvent value, $Res Function(_$LogInEvent) then) =
      __$$LogInEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$LogInEventCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$LogInEvent>
    implements _$$LogInEventCopyWith<$Res> {
  __$$LogInEventCopyWithImpl(
      _$LogInEvent _value, $Res Function(_$LogInEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$LogInEvent(
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

class _$LogInEvent implements LogInEvent {
  const _$LogInEvent(this.email, this.password);

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'LoginEvent.logIn(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LogInEvent &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LogInEventCopyWith<_$LogInEvent> get copyWith =>
      __$$LogInEventCopyWithImpl<_$LogInEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) logIn,
  }) {
    return logIn(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? logIn,
  }) {
    return logIn?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? logIn,
    required TResult orElse(),
  }) {
    if (logIn != null) {
      return logIn(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LogInEvent value) logIn,
  }) {
    return logIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LogInEvent value)? logIn,
  }) {
    return logIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LogInEvent value)? logIn,
    required TResult orElse(),
  }) {
    if (logIn != null) {
      return logIn(this);
    }
    return orElse();
  }
}

abstract class LogInEvent implements LoginEvent {
  const factory LogInEvent(final String email, final String password) =
      _$LogInEvent;

  @override
  String get email;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$LogInEventCopyWith<_$LogInEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LoginState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() logInSuccess,
    required TResult Function() logInFailure,
    required TResult Function() logInInProgress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? logInSuccess,
    TResult? Function()? logInFailure,
    TResult? Function()? logInInProgress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? logInSuccess,
    TResult Function()? logInFailure,
    TResult Function()? logInInProgress,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitlLogInState value) init,
    required TResult Function(LogInSuccessState value) logInSuccess,
    required TResult Function(LogInFailureState value) logInFailure,
    required TResult Function(LogInInProgress value) logInInProgress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitlLogInState value)? init,
    TResult? Function(LogInSuccessState value)? logInSuccess,
    TResult? Function(LogInFailureState value)? logInFailure,
    TResult? Function(LogInInProgress value)? logInInProgress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitlLogInState value)? init,
    TResult Function(LogInSuccessState value)? logInSuccess,
    TResult Function(LogInFailureState value)? logInFailure,
    TResult Function(LogInInProgress value)? logInInProgress,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res, LoginState>;
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res, $Val extends LoginState>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitlLogInStateCopyWith<$Res> {
  factory _$$InitlLogInStateCopyWith(
          _$InitlLogInState value, $Res Function(_$InitlLogInState) then) =
      __$$InitlLogInStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitlLogInStateCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$InitlLogInState>
    implements _$$InitlLogInStateCopyWith<$Res> {
  __$$InitlLogInStateCopyWithImpl(
      _$InitlLogInState _value, $Res Function(_$InitlLogInState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitlLogInState implements InitlLogInState {
  const _$InitlLogInState();

  @override
  String toString() {
    return 'LoginState.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitlLogInState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() logInSuccess,
    required TResult Function() logInFailure,
    required TResult Function() logInInProgress,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? logInSuccess,
    TResult? Function()? logInFailure,
    TResult? Function()? logInInProgress,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? logInSuccess,
    TResult Function()? logInFailure,
    TResult Function()? logInInProgress,
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
    required TResult Function(InitlLogInState value) init,
    required TResult Function(LogInSuccessState value) logInSuccess,
    required TResult Function(LogInFailureState value) logInFailure,
    required TResult Function(LogInInProgress value) logInInProgress,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitlLogInState value)? init,
    TResult? Function(LogInSuccessState value)? logInSuccess,
    TResult? Function(LogInFailureState value)? logInFailure,
    TResult? Function(LogInInProgress value)? logInInProgress,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitlLogInState value)? init,
    TResult Function(LogInSuccessState value)? logInSuccess,
    TResult Function(LogInFailureState value)? logInFailure,
    TResult Function(LogInInProgress value)? logInInProgress,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class InitlLogInState implements LoginState {
  const factory InitlLogInState() = _$InitlLogInState;
}

/// @nodoc
abstract class _$$LogInSuccessStateCopyWith<$Res> {
  factory _$$LogInSuccessStateCopyWith(
          _$LogInSuccessState value, $Res Function(_$LogInSuccessState) then) =
      __$$LogInSuccessStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogInSuccessStateCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LogInSuccessState>
    implements _$$LogInSuccessStateCopyWith<$Res> {
  __$$LogInSuccessStateCopyWithImpl(
      _$LogInSuccessState _value, $Res Function(_$LogInSuccessState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LogInSuccessState implements LogInSuccessState {
  const _$LogInSuccessState();

  @override
  String toString() {
    return 'LoginState.logInSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LogInSuccessState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() logInSuccess,
    required TResult Function() logInFailure,
    required TResult Function() logInInProgress,
  }) {
    return logInSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? logInSuccess,
    TResult? Function()? logInFailure,
    TResult? Function()? logInInProgress,
  }) {
    return logInSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? logInSuccess,
    TResult Function()? logInFailure,
    TResult Function()? logInInProgress,
    required TResult orElse(),
  }) {
    if (logInSuccess != null) {
      return logInSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitlLogInState value) init,
    required TResult Function(LogInSuccessState value) logInSuccess,
    required TResult Function(LogInFailureState value) logInFailure,
    required TResult Function(LogInInProgress value) logInInProgress,
  }) {
    return logInSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitlLogInState value)? init,
    TResult? Function(LogInSuccessState value)? logInSuccess,
    TResult? Function(LogInFailureState value)? logInFailure,
    TResult? Function(LogInInProgress value)? logInInProgress,
  }) {
    return logInSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitlLogInState value)? init,
    TResult Function(LogInSuccessState value)? logInSuccess,
    TResult Function(LogInFailureState value)? logInFailure,
    TResult Function(LogInInProgress value)? logInInProgress,
    required TResult orElse(),
  }) {
    if (logInSuccess != null) {
      return logInSuccess(this);
    }
    return orElse();
  }
}

abstract class LogInSuccessState implements LoginState {
  const factory LogInSuccessState() = _$LogInSuccessState;
}

/// @nodoc
abstract class _$$LogInFailureStateCopyWith<$Res> {
  factory _$$LogInFailureStateCopyWith(
          _$LogInFailureState value, $Res Function(_$LogInFailureState) then) =
      __$$LogInFailureStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogInFailureStateCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LogInFailureState>
    implements _$$LogInFailureStateCopyWith<$Res> {
  __$$LogInFailureStateCopyWithImpl(
      _$LogInFailureState _value, $Res Function(_$LogInFailureState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LogInFailureState implements LogInFailureState {
  const _$LogInFailureState();

  @override
  String toString() {
    return 'LoginState.logInFailure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LogInFailureState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() logInSuccess,
    required TResult Function() logInFailure,
    required TResult Function() logInInProgress,
  }) {
    return logInFailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? logInSuccess,
    TResult? Function()? logInFailure,
    TResult? Function()? logInInProgress,
  }) {
    return logInFailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? logInSuccess,
    TResult Function()? logInFailure,
    TResult Function()? logInInProgress,
    required TResult orElse(),
  }) {
    if (logInFailure != null) {
      return logInFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitlLogInState value) init,
    required TResult Function(LogInSuccessState value) logInSuccess,
    required TResult Function(LogInFailureState value) logInFailure,
    required TResult Function(LogInInProgress value) logInInProgress,
  }) {
    return logInFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitlLogInState value)? init,
    TResult? Function(LogInSuccessState value)? logInSuccess,
    TResult? Function(LogInFailureState value)? logInFailure,
    TResult? Function(LogInInProgress value)? logInInProgress,
  }) {
    return logInFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitlLogInState value)? init,
    TResult Function(LogInSuccessState value)? logInSuccess,
    TResult Function(LogInFailureState value)? logInFailure,
    TResult Function(LogInInProgress value)? logInInProgress,
    required TResult orElse(),
  }) {
    if (logInFailure != null) {
      return logInFailure(this);
    }
    return orElse();
  }
}

abstract class LogInFailureState implements LoginState {
  const factory LogInFailureState() = _$LogInFailureState;
}

/// @nodoc
abstract class _$$LogInInProgressCopyWith<$Res> {
  factory _$$LogInInProgressCopyWith(
          _$LogInInProgress value, $Res Function(_$LogInInProgress) then) =
      __$$LogInInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogInInProgressCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LogInInProgress>
    implements _$$LogInInProgressCopyWith<$Res> {
  __$$LogInInProgressCopyWithImpl(
      _$LogInInProgress _value, $Res Function(_$LogInInProgress) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LogInInProgress implements LogInInProgress {
  const _$LogInInProgress();

  @override
  String toString() {
    return 'LoginState.logInInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LogInInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() logInSuccess,
    required TResult Function() logInFailure,
    required TResult Function() logInInProgress,
  }) {
    return logInInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? logInSuccess,
    TResult? Function()? logInFailure,
    TResult? Function()? logInInProgress,
  }) {
    return logInInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? logInSuccess,
    TResult Function()? logInFailure,
    TResult Function()? logInInProgress,
    required TResult orElse(),
  }) {
    if (logInInProgress != null) {
      return logInInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitlLogInState value) init,
    required TResult Function(LogInSuccessState value) logInSuccess,
    required TResult Function(LogInFailureState value) logInFailure,
    required TResult Function(LogInInProgress value) logInInProgress,
  }) {
    return logInInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitlLogInState value)? init,
    TResult? Function(LogInSuccessState value)? logInSuccess,
    TResult? Function(LogInFailureState value)? logInFailure,
    TResult? Function(LogInInProgress value)? logInInProgress,
  }) {
    return logInInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitlLogInState value)? init,
    TResult Function(LogInSuccessState value)? logInSuccess,
    TResult Function(LogInFailureState value)? logInFailure,
    TResult Function(LogInInProgress value)? logInInProgress,
    required TResult orElse(),
  }) {
    if (logInInProgress != null) {
      return logInInProgress(this);
    }
    return orElse();
  }
}

abstract class LogInInProgress implements LoginState {
  const factory LogInInProgress() = _$LogInInProgress;
}
