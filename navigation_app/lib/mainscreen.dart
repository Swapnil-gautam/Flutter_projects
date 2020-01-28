import 'package:flutter/material.dart';
import 'secondscreen.dart';
class MainScreen extends StatelessWidget {
  GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    key: _scaffoldKey,
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.menu), onPressed: (){
          _scaffoldKey.currentState.openDrawer();
        }),
        title: Text("MainScreen"),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), onPressed: (){

          }),
        ],
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Click Here for next Screen',
              style: TextStyle(
                color: Colors.white,
              )),
              color: new Color(0xff622F74),
              onPressed: (){
                Navigator.push(context,
                MaterialPageRoute(builder: (context)=>SecondScreen()));
              },
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text("Sabki Pasand Nirma",
              style: TextStyle(
                color: Colors.white,
                ),
              ),
              decoration: BoxDecoration(
                color: new Color(0xff622F74),
              ),
            ),
            ListTile(
              title: Text("Hema"),
              onTap: (){
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text("Rekha"),
              onTap: (){
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text("Jaya"),
              onTap: (){
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text("Sushma"),
              onTap: (){
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
