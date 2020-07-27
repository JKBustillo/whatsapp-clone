import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  final String name;
  ChatScreen({this.name});
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
       title: new Text(widget.name),
    );
  }
}