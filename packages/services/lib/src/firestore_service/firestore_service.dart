import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:models/models.dart';
import 'package:shared/shared.dart';

class FirestoreService {
  Future<List<DocumentSnapshot>> getInfoFirestore(
    String pathCollection,
    int limit,
    String textSearch,
  ) async {
    FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
    List<DocumentSnapshot> result = [];
    QuerySnapshot response;

    if (textSearch.isNotEmpty) {
      response = await firebaseFirestore
          .collection(pathCollection)
          .limit(limit)
          .where(FirestoreConstants.nickName, isEqualTo: textSearch)
          .get();

      result = response.docs;
    } else {
      response =
          await firebaseFirestore.collection(pathCollection).limit(limit).get();

      result = response.docs;
    }
    return result;
  }

  Future<List<DocumentSnapshot>> getChatMessages(
    String groupChatId,
    int limit,
  ) async {
    FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
    List<DocumentSnapshot> result = [];
    QuerySnapshot? response;

    response = await firebaseFirestore
        .collection(FirestoreConstants.pathMessageCollection)
        .doc(groupChatId)
        .collection(groupChatId)
        .orderBy(FirestoreConstants.timestamp, descending: true)
        .limit(limit)
        .get();

    result = response.docs;
    return result;
  }

  Future<void> sendMessage(
    String content,
    int type,
    String groupChatId,
    String currentUserId,
    String preeId,
  ) async {
    FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
    DocumentReference documentReference = firebaseFirestore
        .collection(FirestoreConstants.pathMessageCollection)
        .doc(groupChatId)
        .collection(groupChatId)
        .doc(DateTime.now().millisecondsSinceEpoch.toString());

    MessageChat messageChat = MessageChat(
      idFrom: currentUserId,
      idTo: preeId,
      timestamp: DateTime.now().millisecondsSinceEpoch.toString(),
      content: content,
      type: type,
    );

    FirebaseFirestore.instance.runTransaction((transaction) async {
      transaction.set(documentReference, messageChat.toJson());
    });
  }
}
