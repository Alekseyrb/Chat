import 'package:models/models.dart';
import 'package:repositories/repositories.dart';
import 'package:services/services.dart';

class FirestoreRepository {
  final FirestoreService firestoreService;
  final AuthRepository authRepository;

  FirestoreRepository(this.firestoreService, this.authRepository);

  Future<List<UserChat>> getInfoFirestore(
    String pathCollection,
    int limit,
    String textSearch,
  ) async {
    final response = await firestoreService.getInfoFirestore(
        pathCollection, limit, textSearch);

    return List<UserChat>.from(response
        .map((item) => UserChat.fromDocument(item))
        .where((element) => element.id != authRepository.userId)).toList();
  }

  Future<List<MessageChat>> getChatMessages(
      String groupChatId, int limit) async {
    final response = await firestoreService.getChatMessages(groupChatId, limit);
    return List<MessageChat>.from(
        response.map((item) => MessageChat.fromDocument(item))).toList();
  }

  Future<void> updateDataFirestore(String collectionPath, String docPath,
      Map<String, dynamic> dataNeedUpdate) {
    return firestoreService.updateDataFirestore(
        collectionPath, docPath, dataNeedUpdate);
  }

  Future<void> sendMessage(String content, int type, String groupChatId,
      String currentUserId, String peerId) async {
    return firestoreService.sendMessage(
        content, type, groupChatId, currentUserId, peerId);
  }
}
