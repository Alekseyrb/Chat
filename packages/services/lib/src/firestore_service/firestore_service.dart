import 'package:cloud_firestore/cloud_firestore.dart';
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
}
