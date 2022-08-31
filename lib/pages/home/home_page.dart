import 'dart:convert';

import 'package:chat_app_firebase/models/user_model.dart';
import 'package:chat_app_firebase/pages/message/message_page.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterfire_ui/firestore.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    // _initData();
    super.initState();
  }

  // void _initData() async {
  //   for (var i = 0; i <= 10; i++) {
  //     var ref = FirebaseFirestore.instance.collection('users');
  //     await ref.add(UserModel(
  //             name: 'Patric $i',
  //             idUser: '$i',
  //             lastMessageTime: DateTime.now().toString(),
  //             urlAvatar:
  //                 'https://www.kindpng.com/picc/m/630-6306130_avatar-avatar-male-user-icon-hd-png-download.png')
  //         .toJson());
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FirestoreListView(
        shrinkWrap: true,
        query: FirebaseFirestore.instance
            .collection('users')
            .orderBy('lastMessageTime', descending: true),
        loadingBuilder: (context) => const CupertinoActivityIndicator(),
        errorBuilder: (context, _, stack) =>
            const Center(child: CupertinoActivityIndicator()),
        itemBuilder: (context, snapshot) {
          final UserModel user =
              UserModel.fromJson(jsonDecode(json.encode(snapshot.data()!)));
          return Card(
            child: ListTile(
              title: Text(user.name),
              subtitle: Text(user.lastMessageTime.toString()),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => MessagePage(model: user)));
              },
              leading: CircleAvatar(
                child: Image.network(user.urlAvatar, fit: BoxFit.cover),
              ),
            ),
          );
        },
      ),
    );
  }
}
