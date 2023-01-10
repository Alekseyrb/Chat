import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:image_picker/image_picker.dart';
import 'package:models/models.dart';
import 'package:shared/shared.dart';

class FirestoreService {
  Future<void> updateDataFirestore(
      String collectionPath, String path, Map<String, dynamic> dataNeedUpdate) {
    FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
    return firebaseFirestore
        .collection(collectionPath)
        .doc(path)
        .update(dataNeedUpdate);
  }

  Future<List<DocumentSnapshot>> getInfoFirestore(
    String pathCollection,
    int limit,
    String? textSearch,
  ) async {
    FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
    List<DocumentSnapshot> result = [];
    QuerySnapshot response;

    if (textSearch?.isNotEmpty == true) {
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
    String peerId,
  ) async {
    FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
    DocumentReference documentReference = firebaseFirestore
        .collection(FirestoreConstants.pathMessageCollection)
        .doc(groupChatId)
        .collection(groupChatId)
        .doc(DateTime.now().millisecondsSinceEpoch.toString());

    MessageChat messageChat = MessageChat(
      idFrom: currentUserId,
      idTo: peerId,
      timestamp: DateTime.now().millisecondsSinceEpoch.toString(),
      content: content,
      type: type,
    );

    FirebaseFirestore.instance.runTransaction((transaction) async {
      transaction.set(documentReference, messageChat.toJson());
    });
  }

  Future getImage(
    int typeMessage,
    String groupChatId,
    String currentUserId,
    String peerId,
  ) async {
    ImagePicker imagePicker = ImagePicker();
    XFile? pickedFile;

    pickedFile = await imagePicker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      File imageFile = File(pickedFile.path);
      if (imageFile != null) {
        fileUpload(typeMessage, imageFile, groupChatId, currentUserId, peerId);
      }
    }
  }

  UploadTask uploadFile(File image, String fileName) {
    FirebaseStorage firebaseStorage = FirebaseStorage.instance;
    Reference reference = firebaseStorage.ref().child(fileName);
    UploadTask uploadTask = reference.putFile(image);
    return uploadTask;
  }

  Future fileUpload(
    int typeMessage,
    File imageFile,
    String groupChatId,
    String currentUserId,
    String peerId,
  ) async {
    String fileName = DateTime.now().millisecondsSinceEpoch.toString();
    UploadTask uploadTask = uploadFile(imageFile, fileName);
    try {
      TaskSnapshot snapshot = await uploadTask;
      String imageUrl = await snapshot.ref.getDownloadURL();

      sendMessage(imageUrl, typeMessage, groupChatId, currentUserId, peerId);
    } on FirebaseException catch (e) {
      Fluttertoast.showToast(msg: e.message ?? e.toString());
    }
  }
}
