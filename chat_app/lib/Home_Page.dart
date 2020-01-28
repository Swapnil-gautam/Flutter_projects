import 'package:flutter/material.dart';

import 'Chat_Screen.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("GangTalk"),
      ),
      body: new ChatScreen()
    );
  }
}
