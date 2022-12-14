import 'dart:convert';

import 'package:chat_app_firebase/consts.dart';
import 'package:chat_app_firebase/models/message.dart';
import 'package:chat_app_firebase/models/user_model.dart';
import 'package:chat_app_firebase/service/cld_fire_db.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterfire_ui/firestore.dart';
import 'package:intl/intl.dart';

class MessagePage extends StatefulWidget {
  final UserModel? model;
  const MessagePage({Key? key, required this.model}) : super(key: key);

  @override
  State<MessagePage> createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  final TextEditingController _textController = TextEditingController();
  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  void _sendMessage() async {
    if (_textController.text.isEmpty) return;
    CloudFireRepository.createMessage(
        widget.model!.idUser, _textController.text);
    _textController.clear();
    FocusScope.of(context).unfocus();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        children: [
          Positioned(
            left: .0,
            right: .0,
            bottom: 100,
            child: FirestoreListView(
              physics: const BouncingScrollPhysics(),
              padding: const EdgeInsets.symmetric(horizontal: 10),
              shrinkWrap: true,
              reverse: true,
              query: FirebaseFirestore.instance
                  .collection('chats/${widget.model!.idUser}/messages')
                  .orderBy('createdAt', descending: true),
              loadingBuilder: (context) => const CupertinoActivityIndicator(),
              errorBuilder: (context, _, stack) =>
                  const Center(child: CupertinoActivityIndicator()),
              itemBuilder: (context, snapshot) {
                final MessageModel message = MessageModel.fromJson(
                    jsonDecode(json.encode(snapshot.data())));
                return MessageWidget(
                  message: message,
                  isMe: AppConsts.myId == message.idUser,
                );
              },
            ),
          ),
          Positioned(
              bottom: 30,
              left: 20,
              right: 20,
              child: Row(
                children: [
                  Expanded(
                      child: TextField(
                    controller: _textController,
                  )),
                  IconButton(
                    onPressed: _sendMessage,
                    icon: const Icon(Icons.send),
                  ),
                ],
              ))
        ],
      ),
    );
  }
}

class MessageWidget extends StatelessWidget {
  final bool? isMe;
  const MessageWidget({
    Key? key,
    required this.isMe,
    required this.message,
  }) : super(key: key);

  final MessageModel message;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment:
            isMe! ? MainAxisAlignment.end : MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          if (!isMe!)
            CircleAvatar(
              child: Image.network(
                message.urlAvatar,
                fit: BoxFit.cover,
              ),
            ),
          const SizedBox(
            width: 20,
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: isMe! ? Colors.blue[300] : Colors.grey[400],
                    borderRadius: BorderRadius.circular(10)),
                child: Text(
                  message.message,
                  style: const TextStyle(fontSize: 20),
                ),
              ),
              Text(DateFormat.Hm()
                  .format(DateTime.tryParse(message.createdAt)!)
                  .toString()),
            ],
          ),
        ],
      ),
    );
  }
}
