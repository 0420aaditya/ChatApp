import 'package:chatapp/chat_screen.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Friendship Chat"),
        centerTitle: true,
      ),
      body: ChatScreen(),
    );
  }
}
