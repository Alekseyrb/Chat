import 'package:models/models.dart';
import 'package:repositories/repositories.dart';
import 'package:services/services.dart';
import 'package:shared/shared.dart';

class FirestoreRepository {
  final FirestoreService firestoreService;
  final AuthRepository authRepository;
  final UpdateDateService updateDateService;

  FirestoreRepository(
      this.firestoreService, this.authRepository, this.updateDateService);

  Future<List<UserChat>> getInfoFirestore(
    String pathCollection,
    int limit,
    String textSearch,
  ) async {
    final response = await firestoreService.getInfoFirestore(
        pathCollection, limit, textSearch);

    final result = List<UserChat>.from(response
        .map((item) => UserChat.fromDocument(item))
        .where((element) => element.id != updateDateService.userId)).toList();
    if (result.isNotEmpty) {
      updateDateService.nickname = result.first.nickName;
      updateDateService.aboutMe = result.first.aboutMe;
      updateDateService.photoUrl = result.first.photoUrl;
    }

    return List<UserChat>.from(response
        .map((item) => UserChat.fromDocument(item))
        .where((element) => element.id != updateDateService.userId)).toList();
  }

  Future<List<UserChat>> getInfoUser() async {
    final response = await firestoreService.getInfoFirestore(
        FirestoreConstants.pathUserCollection, 20, '');

    final result = List<UserChat>.from(response
        .map((item) => UserChat.fromDocument(item))
        .where((element) => element.id != updateDateService.userId)).toList();
    if (result.isNotEmpty) {
      updateDateService.nickname = result.first.nickName;
      updateDateService.aboutMe = result.first.aboutMe;
      updateDateService.photoUrl = result.first.photoUrl;
    }

    return result;
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

  Future<void> getImage(
      int type, String groupChatId, String currentUserId, String peerId) async {
    return firestoreService.getImage(type, groupChatId, currentUserId, peerId);
  }

  Future<void> getImageUser() async {
    await firestoreService.getImageUser(updateDateService.userId);
  }
}
