import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:models/models.dart';
import 'package:repositories/repositories.dart';
import 'package:shared/shared.dart';

part 'chat_event.dart';

part 'chat_state.dart';

part 'chat_bloc.freezed.dart';

@injectable
class ChatBloc extends Bloc<ChatEvent, ChatState> {
  final FirestoreRepository firestoreRepository;
  final AuthRepository authRepository;
  String peerId = '';

  ChatBloc(this.firestoreRepository, this.authRepository)
      : super(const ChatState.loading()) {
    on<InitChatEvent>(_init);
    on<SendMessageChatEvent>(_sendMessage);
  }

  Future<void> _init(InitChatEvent event, Emitter<ChatState> emit) async {
    String groupChatId = '';

    final currentUserId = authRepository.userId;

    peerId = event.peerId;
    if (currentUserId.compareTo(peerId) > 0) {
      groupChatId = '$currentUserId-$peerId';
    } else {
      groupChatId = '$peerId-$currentUserId';
    }

    firestoreRepository.updateDataFirestore(
        FirestoreConstants.pathUserCollection,
        currentUserId,
        {FirestoreConstants.chattingWith: peerId});
    final result = await firestoreRepository.getChatMessages(groupChatId, 20);

    emit(ChatState.init(currentUserId: currentUserId, listMessages: result));
  }

  Future<void> _sendMessage(
      SendMessageChatEvent event, Emitter<ChatState> emit) async {
    String groupChatId = '';

    final currentUserId = authRepository.userId;

    // peerId = event.peerId;
    if (currentUserId.compareTo(peerId) > 0) {
      groupChatId = '$currentUserId-$peerId';
    } else {
      groupChatId = '$peerId-$currentUserId';
    }

    if (event.type == 0) {
      await firestoreRepository.sendMessage(
        event.content,
        event.type,
        groupChatId,
        currentUserId,
        peerId,
      );
    } else if (event.type == 1) {
      await firestoreRepository.getImage(
        event.type,
        groupChatId,
        currentUserId,
        peerId,
      );
    }

    await firestoreRepository.sendMessage(
      event.content,
      event.type,
      groupChatId,
      currentUserId,
      peerId,
    );

    firestoreRepository.updateDataFirestore(
        FirestoreConstants.pathUserCollection,
        currentUserId,
        {FirestoreConstants.chattingWith: peerId});

    final result = await firestoreRepository.getChatMessages(groupChatId, 20);

    emit(const ChatState.loading());

    emit(ChatState.init(currentUserId: currentUserId, listMessages: result));
  }
}
