part of 'chat_bloc.dart';

@freezed
class ChatState with _$ChatState {
  const factory ChatState.init({required String currentUserId, required List<MessageChat> listMessages}) = InitChatState;
  const factory ChatState.loading() = LoadingChatState;
}