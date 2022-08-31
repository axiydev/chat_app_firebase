import 'package:chat_app_firebase/consts.dart';
import 'package:chat_app_firebase/models/message.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class CloudFireRepository {
  static createUser() async {
    CollectionReference ref = FirebaseFirestore.instance.collection('users');
    return ref.snapshots();
  }

  static createMessage(String idUser, String? message) async {
    CollectionReference ref =
        FirebaseFirestore.instance.collection('chats/$idUser/messages');
    MessageModel messageModel = MessageModel(
        createdAt: DateTime.now().toString(),
        idUser: AppConsts.myId,
        urlAvatar:
            'https://www.kindpng.com/picc/m/630-6306130_avatar-avatar-male-user-icon-hd-png-download.png',
        message: message!,
        userName: 'dev');
    ref.add(messageModel.toJson());
    CollectionReference userRef =
        FirebaseFirestore.instance.collection('users');
    await userRef
        .doc(idUser)
        .update({'lastMessageTime': DateTime.now().toString()});
  }
}
