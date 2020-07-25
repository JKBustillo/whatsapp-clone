import 'package:flutter/material.dart';
import 'package:whatsapp_clone/pages/call.dart';
import 'package:whatsapp_clone/pages/camera.dart';
import 'package:whatsapp_clone/pages/chatList.dart';
import 'package:whatsapp_clone/pages/status.dart';

class WhatsAppHome extends StatefulWidget {
  @override
  _WhatsAppHomeState createState() => _WhatsAppHomeState();
}

class _WhatsAppHomeState extends State<WhatsAppHome> with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, initialIndex: 1, length: 4);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: new AppBar(
         title: new Text('MyChat'),
         bottom: new TabBar(
           controller: _tabController,
           tabs: <Widget>[
             new Tab(icon: new Icon(Icons.camera_alt),),
             new Tab(text: "CHATS",),
             new Tab(text: "ESTADOS",),
             new Tab(text: "LLAMADAS",),
           ],
         ),
       ),
       body: new TabBarView(
         controller: _tabController,
         children: <Widget>[
           new Camera(),
           new ChatList(),
           new Status(),
           new Call(),
         ],
       ),
    );
  }
}