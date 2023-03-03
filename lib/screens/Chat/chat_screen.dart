import 'dart:async';

import 'package:awesome_ui/screens/Chat/components/message.dart';
import 'package:flutter/material.dart';

import 'repository/socket_repository.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  SocketRepository socketRepository = SocketRepository();
  TextEditingController textController = TextEditingController();
  final ScrollController _scrollController = ScrollController();
  List<dynamic> messages = [];

  @override
  void initState() {
    socketRepository.messageListener((data) {
      setState(() {
        messages.insert(0,{
          ...data,
          "who": socketRepository.socketClient.id == data["sender"] as String
              ? "me"
              : "other"
        });
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    socketRepository.socketClient.dispose();

    super.dispose();
  }

  void sendMessage() {
    socketRepository.sendMessage({
      "message": textController.text,
      "sender": socketRepository.socketClient.id
    });
    setState(() {
      textController.text = "";
    });
    Timer(
      const Duration(seconds: 1),
      () =>
          _scrollController.jumpTo(_scrollController.position.minScrollExtent),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: messages.isNotEmpty
                  ? ListView.builder(
                      itemCount: messages.length,
                      controller: _scrollController,
                      reverse: true,
                      itemBuilder: (context, index) =>
                          TextMessage(message: messages[index]),
                    )
                  : Container(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                    child: TextField(
                  textCapitalization: TextCapitalization.sentences,
                  controller: textController,
                  decoration: const InputDecoration(
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      contentPadding: EdgeInsets.only(
                          left: 15, bottom: 11, top: 11, right: 15),
                      hintText: "Message"),
                )),
                ElevatedButton(
                    onPressed: sendMessage, child: const Text("Send"))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
