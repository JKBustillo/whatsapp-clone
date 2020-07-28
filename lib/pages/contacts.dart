import 'package:flutter/material.dart';
import 'package:whatsapp_clone/pages/contactList.dart';

class Contacts extends StatefulWidget {

  @override
  _ContactsState createState() => _ContactsState();
}

class _ContactsState extends State<Contacts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: new AppBar(
         title: new Text("Select contact")
       ),
       body: new ContactList(),
    );
  }
}