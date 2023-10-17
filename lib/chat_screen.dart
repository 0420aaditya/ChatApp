import 'package:chatapp/chat_message.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final List<ChatMessage> _messages =
      <ChatMessage>[]; //to display the chat message on chat screen
  @override
  final TextEditingController _textcontroller = TextEditingController();

  void _handleSubmitted(String text) {
    _textcontroller.clear(); //to clear the text field after sending msge
    ChatMessage message = new ChatMessage(
      text: text,
    );
    setState(() {
      //to rebuild the list and insert the message list in ChatScreen
      _messages.insert(0, message);
    });
  }

  Widget _textComposerWidget() {
    return IconTheme(
      data: IconThemeData(
        color: Colors.blue,
      ),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          children: [
            // This flexible will occupy the full width
            Flexible(
              child: TextField(
                //.collapsed removes the underline from the textfield
                decoration:
                    InputDecoration.collapsed(hintText: "Send a message"),
                controller: _textcontroller,
                onSubmitted: _handleSubmitted, //handling msge after submit
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 4.0),
              child: IconButton(
                icon: Icon(Icons.send),
                onPressed: () => _handleSubmitted(_textcontroller.text),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget build(BuildContext context) {
    return Column(
      children: [
        Flexible(
          child: ListView.builder(
            padding: EdgeInsets.all(8.0),
            reverse: true, //list will generate from the bottom
            itemBuilder: (_, int index) => _messages[index],
            itemCount: _messages.length, //take build context and user index
          ),
        ),
        Divider(
          height: 1.0,
        ),
        Container(
          decoration: BoxDecoration(
            color: Theme.of(context).cardColor,
          ),
          child: _textComposerWidget(),
        ),
      ],
    );
  }
}
