import 'package:flutter/material.dart';
import 'package:chatapp/home_page.dart';
import 'package:chatapp/chat_screen.dart';
import 'package:chatapp/chat_message.dart';

void main() {
  runApp(ChatApp());
}

class ChatApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "ChatApp",
      home: HomePage(),
    );
  }
}
