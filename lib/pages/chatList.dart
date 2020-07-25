import 'package:flutter/material.dart';
import 'package:whatsapp_clone/models/chat_model.dart';

class ChatList extends StatefulWidget {
  @override
  _ChatListState createState() => _ChatListState();
}

class _ChatListState extends State<ChatList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: messageData.length,
      itemBuilder: (BuildContext context, int i) => new Column(
        children: <Widget>[
          new Divider(
            height: 10.0,
          ),
          new ListTile(
            leading: new CircleAvatar(
              backgroundImage: NetworkImage(messageData[i].imageURL),
            ),
          )
        ],
      ),
    );
  }
}