import 'package:flutter/material.dart';
import 'package:whatsapp_clone/models/status_model.dart';

class Status extends StatefulWidget {
  @override
  _StatusState createState() => _StatusState();
}

class _StatusState extends State<Status> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: new ListView(
         children: <Widget>[
           new ListTile(
             leading: new CircleAvatar(
               foregroundColor: Theme.of(context).accentColor,
               backgroundColor: Colors.grey,
               backgroundImage: new NetworkImage(status[0].imgURL)
             ),
             title: new Text(
               "Mi estado",
               style: new TextStyle(
                 fontWeight: FontWeight.bold
               ),
             ),
             subtitle: new Text("Añade una actualización"),
           ),
           new Container(
              margin: const EdgeInsets.only(left: 17.0),
              child: new Text(
                "Recientes",
                style: new TextStyle(fontWeight: FontWeight.bold, color: Theme.of(context).primaryColor)
              ),
           ),
           new ListTile(
             leading: new CircleAvatar(
               foregroundColor: Theme.of(context).accentColor,
               backgroundColor: Colors.grey,
               backgroundImage: new NetworkImage(status[1].imgURL)
             ),
             title: new Text(
               status[1].name,
               style: new TextStyle(
                 fontWeight: FontWeight.bold
               ),
             ),
             subtitle: new Text(status[1].time),
           ),
           new Divider(),
           new ListTile(
             leading: new CircleAvatar(
               foregroundColor: Theme.of(context).accentColor,
               backgroundColor: Colors.grey,
               backgroundImage: new NetworkImage(status[2].imgURL)
             ),
             title: new Text(
               status[2].name,
               style: new TextStyle(
                 fontWeight: FontWeight.bold
               ),
             ),
             subtitle: new Text(status[2].time),
           ),
         ],
       ),
    );
  }
}