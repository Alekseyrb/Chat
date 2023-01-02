part of 'chat_bloc.dart';

@freezed
class ChatEvent with _$ChatEvent {
  const factory ChatEvent.init(String peerId) = InitChatEvent;
  const factory ChatEvent.sendMessage(String content, int type) = SendMessageChatEvent;
}