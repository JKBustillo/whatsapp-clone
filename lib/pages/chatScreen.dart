import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  final String name;
  ChatScreen({this.name});
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> with TickerProviderStateMixin{
  final TextEditingController _textController = new TextEditingController();
  final List<ChatMessage> _messages = <ChatMessage>[];

  void _handleSubmit(String text) {
    ChatMessage message = new ChatMessage(
      text: text,
      animationController: new AnimationController(
        duration: new Duration(milliseconds: 700),
        vsync: this
      ),
      name: widget.name,
    );

    setState(() {
      _messages.insert(0, message);
    });
    message.animationController.forward();

    print(text);
  }

  Widget _buildTextComposer() {
    return IconTheme(
      data: new IconThemeData(color: Theme.of(context).accentColor),
      child: new Container(
        child: new Row(
          children: <Widget>[
            new Flexible(
              child: new TextField(
                controller: _textController,
              ),
            ),
            new Container(
              child: new IconButton(
                icon: new Icon(Icons.send),
                onPressed: () => _handleSubmit(_textController.text),
              ),
            )
          ],
        ),
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text(widget.name),
      ),
      body: new Container(
        child: new Column(
          children: <Widget>[
            new Flexible(
              child: new ListView.builder(
                itemBuilder: (_, int i) => _messages[i],
                itemCount: _messages.length,
              ),
            ),
            new Divider(height: 1.0),
            new Container(
              child: _buildTextComposer(),
            ),
          ],
        ),
      ),
    );
  }
}

class ChatMessage extends StatelessWidget {
  ChatMessage({this.text, this.animationController, this.name});
  final String text;
  final AnimationController animationController;
  final String name;

  @override
  Widget build(BuildContext context) {
    return SizeTransition(
        sizeFactor: new CurvedAnimation(
          parent: animationController,
          curve: Curves.easeOut
        ),
        child: new Container(
          child: new Row(
            children: <Widget> [
              new Expanded(
                child: new Column(
                  children: <Widget>[
                    new Text(name),
                    new Container(
                      child: new Text(text),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
    );
  }
}