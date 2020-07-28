import 'package:flutter/material.dart';
import 'package:whatsapp_clone/models/chat_model.dart';
import 'package:whatsapp_clone/pages/chatScreen.dart';

class ContactList extends StatefulWidget {
  @override
  _ContactListState createState() => _ContactListState();
}

class _ContactListState extends State<ContactList> {
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
            title: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                new Text(
                  messageData[i].name,
                  style: new TextStyle(fontWeight: FontWeight.bold),
                ),
                new Text(
                  messageData[i].device,
                  style: new TextStyle(
                    color: Theme.of(context).accentColor,
                    fontSize: 14.0,
                  )
                )
              ],
            ),
            subtitle: new Container(
              padding: const EdgeInsets.only(top: 5.0),
              child: new Text(
                messageData[i].status,
                style: new TextStyle(fontSize: 16.0),
              )
            ),
            onTap: () {
              var route = new MaterialPageRoute(
                builder: (BuildContext context) => new ChatScreen(name: messageData[i].name)
              );
              Navigator.of(context).push(route);
            },
          )
        ],
      ),
    );
  }
}