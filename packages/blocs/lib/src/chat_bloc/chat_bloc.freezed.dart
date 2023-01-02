// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChatEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String peerId) init,
    required TResult Function(String content, int type) sendMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String peerId)? init,
    TResult? Function(String content, int type)? sendMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String peerId)? init,
    TResult Function(String content, int type)? sendMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitChatEvent value) init,
    required TResult Function(SendMessageChatEvent value) sendMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitChatEvent value)? init,
    TResult? Function(SendMessageChatEvent value)? sendMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitChatEvent value)? init,
    TResult Function(SendMessageChatEvent value)? sendMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatEventCopyWith<$Res> {
  factory $ChatEventCopyWith(ChatEvent value, $Res Function(ChatEvent) then) =
      _$ChatEventCopyWithImpl<$Res, ChatEvent>;
}

/// @nodoc
class _$ChatEventCopyWithImpl<$Res, $Val extends ChatEvent>
    implements $ChatEventCopyWith<$Res> {
  _$ChatEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitChatEventCopyWith<$Res> {
  factory _$$InitChatEventCopyWith(
          _$InitChatEvent value, $Res Function(_$InitChatEvent) then) =
      __$$InitChatEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String peerId});
}

/// @nodoc
class __$$InitChatEventCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$InitChatEvent>
    implements _$$InitChatEventCopyWith<$Res> {
  __$$InitChatEventCopyWithImpl(
      _$InitChatEvent _value, $Res Function(_$InitChatEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? peerId = null,
  }) {
    return _then(_$InitChatEvent(
      null == peerId
          ? _value.peerId
          : peerId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InitChatEvent implements InitChatEvent {
  const _$InitChatEvent(this.peerId);

  @override
  final String peerId;

  @override
  String toString() {
    return 'ChatEvent.init(peerId: $peerId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitChatEvent &&
            (identical(other.peerId, peerId) || other.peerId == peerId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, peerId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitChatEventCopyWith<_$InitChatEvent> get copyWith =>
      __$$InitChatEventCopyWithImpl<_$InitChatEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String peerId) init,
    required TResult Function(String content, int type) sendMessage,
  }) {
    return init(peerId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String peerId)? init,
    TResult? Function(String content, int type)? sendMessage,
  }) {
    return init?.call(peerId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String peerId)? init,
    TResult Function(String content, int type)? sendMessage,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(peerId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitChatEvent value) init,
    required TResult Function(SendMessageChatEvent value) sendMessage,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitChatEvent value)? init,
    TResult? Function(SendMessageChatEvent value)? sendMessage,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitChatEvent value)? init,
    TResult Function(SendMessageChatEvent value)? sendMessage,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class InitChatEvent implements ChatEvent {
  const factory InitChatEvent(final String peerId) = _$InitChatEvent;

  String get peerId;
  @JsonKey(ignore: true)
  _$$InitChatEventCopyWith<_$InitChatEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SendMessageChatEventCopyWith<$Res> {
  factory _$$SendMessageChatEventCopyWith(_$SendMessageChatEvent value,
          $Res Function(_$SendMessageChatEvent) then) =
      __$$SendMessageChatEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String content, int type});
}

/// @nodoc
class __$$SendMessageChatEventCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$SendMessageChatEvent>
    implements _$$SendMessageChatEventCopyWith<$Res> {
  __$$SendMessageChatEventCopyWithImpl(_$SendMessageChatEvent _value,
      $Res Function(_$SendMessageChatEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? type = null,
  }) {
    return _then(_$SendMessageChatEvent(
      null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SendMessageChatEvent implements SendMessageChatEvent {
  const _$SendMessageChatEvent(this.content, this.type);

  @override
  final String content;
  @override
  final int type;

  @override
  String toString() {
    return 'ChatEvent.sendMessage(content: $content, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendMessageChatEvent &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, content, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SendMessageChatEventCopyWith<_$SendMessageChatEvent> get copyWith =>
      __$$SendMessageChatEventCopyWithImpl<_$SendMessageChatEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String peerId) init,
    required TResult Function(String content, int type) sendMessage,
  }) {
    return sendMessage(content, type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String peerId)? init,
    TResult? Function(String content, int type)? sendMessage,
  }) {
    return sendMessage?.call(content, type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String peerId)? init,
    TResult Function(String content, int type)? sendMessage,
    required TResult orElse(),
  }) {
    if (sendMessage != null) {
      return sendMessage(content, type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitChatEvent value) init,
    required TResult Function(SendMessageChatEvent value) sendMessage,
  }) {
    return sendMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitChatEvent value)? init,
    TResult? Function(SendMessageChatEvent value)? sendMessage,
  }) {
    return sendMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitChatEvent value)? init,
    TResult Function(SendMessageChatEvent value)? sendMessage,
    required TResult orElse(),
  }) {
    if (sendMessage != null) {
      return sendMessage(this);
    }
    return orElse();
  }
}

abstract class SendMessageChatEvent implements ChatEvent {
  const factory SendMessageChatEvent(final String content, final int type) =
      _$SendMessageChatEvent;

  String get content;
  int get type;
  @JsonKey(ignore: true)
  _$$SendMessageChatEventCopyWith<_$SendMessageChatEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ChatState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String currentUserId, List<MessageChat> listMessages)
        init,
    required TResult Function() loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String currentUserId, List<MessageChat> listMessages)?
        init,
    TResult? Function()? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String currentUserId, List<MessageChat> listMessages)?
        init,
    TResult Function()? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitChatState value) init,
    required TResult Function(LoadingChatState value) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitChatState value)? init,
    TResult? Function(LoadingChatState value)? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitChatState value)? init,
    TResult Function(LoadingChatState value)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatStateCopyWith<$Res> {
  factory $ChatStateCopyWith(ChatState value, $Res Function(ChatState) then) =
      _$ChatStateCopyWithImpl<$Res, ChatState>;
}

/// @nodoc
class _$ChatStateCopyWithImpl<$Res, $Val extends ChatState>
    implements $ChatStateCopyWith<$Res> {
  _$ChatStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitChatStateCopyWith<$Res> {
  factory _$$InitChatStateCopyWith(
          _$InitChatState value, $Res Function(_$InitChatState) then) =
      __$$InitChatStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String currentUserId, List<MessageChat> listMessages});
}

/// @nodoc
class __$$InitChatStateCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$InitChatState>
    implements _$$InitChatStateCopyWith<$Res> {
  __$$InitChatStateCopyWithImpl(
      _$InitChatState _value, $Res Function(_$InitChatState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentUserId = null,
    Object? listMessages = null,
  }) {
    return _then(_$InitChatState(
      currentUserId: null == currentUserId
          ? _value.currentUserId
          : currentUserId // ignore: cast_nullable_to_non_nullable
              as String,
      listMessages: null == listMessages
          ? _value._listMessages
          : listMessages // ignore: cast_nullable_to_non_nullable
              as List<MessageChat>,
    ));
  }
}

/// @nodoc

class _$InitChatState implements InitChatState {
  const _$InitChatState(
      {required this.currentUserId,
      required final List<MessageChat> listMessages})
      : _listMessages = listMessages;

  @override
  final String currentUserId;
  final List<MessageChat> _listMessages;
  @override
  List<MessageChat> get listMessages {
    if (_listMessages is EqualUnmodifiableListView) return _listMessages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listMessages);
  }

  @override
  String toString() {
    return 'ChatState.init(currentUserId: $currentUserId, listMessages: $listMessages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitChatState &&
            (identical(other.currentUserId, currentUserId) ||
                other.currentUserId == currentUserId) &&
            const DeepCollectionEquality()
                .equals(other._listMessages, _listMessages));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentUserId,
      const DeepCollectionEquality().hash(_listMessages));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitChatStateCopyWith<_$InitChatState> get copyWith =>
      __$$InitChatStateCopyWithImpl<_$InitChatState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String currentUserId, List<MessageChat> listMessages)
        init,
    required TResult Function() loading,
  }) {
    return init(currentUserId, listMessages);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String currentUserId, List<MessageChat> listMessages)?
        init,
    TResult? Function()? loading,
  }) {
    return init?.call(currentUserId, listMessages);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String currentUserId, List<MessageChat> listMessages)?
        init,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(currentUserId, listMessages);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitChatState value) init,
    required TResult Function(LoadingChatState value) loading,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitChatState value)? init,
    TResult? Function(LoadingChatState value)? loading,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitChatState value)? init,
    TResult Function(LoadingChatState value)? loading,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class InitChatState implements ChatState {
  const factory InitChatState(
      {required final String currentUserId,
      required final List<MessageChat> listMessages}) = _$InitChatState;

  String get currentUserId;
  List<MessageChat> get listMessages;
  @JsonKey(ignore: true)
  _$$InitChatStateCopyWith<_$InitChatState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingChatStateCopyWith<$Res> {
  factory _$$LoadingChatStateCopyWith(
          _$LoadingChatState value, $Res Function(_$LoadingChatState) then) =
      __$$LoadingChatStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingChatStateCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$LoadingChatState>
    implements _$$LoadingChatStateCopyWith<$Res> {
  __$$LoadingChatStateCopyWithImpl(
      _$LoadingChatState _value, $Res Function(_$LoadingChatState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingChatState implements LoadingChatState {
  const _$LoadingChatState();

  @override
  String toString() {
    return 'ChatState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingChatState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String currentUserId, List<MessageChat> listMessages)
        init,
    required TResult Function() loading,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String currentUserId, List<MessageChat> listMessages)?
        init,
    TResult? Function()? loading,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String currentUserId, List<MessageChat> listMessages)?
        init,
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
    required TResult Function(InitChatState value) init,
    required TResult Function(LoadingChatState value) loading,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitChatState value)? init,
    TResult? Function(LoadingChatState value)? loading,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitChatState value)? init,
    TResult Function(LoadingChatState value)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingChatState implements ChatState {
  const factory LoadingChatState() = _$LoadingChatState;
}
