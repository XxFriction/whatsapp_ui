import 'package:flutter/material.dart';
import 'package:whatsapp_ui/newChatScreen.dart';
import 'mainHomeScreen.dart';

void main(){
  runApp(myapp());
}

class myapp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: mainHomePage(),
    );
  }
}