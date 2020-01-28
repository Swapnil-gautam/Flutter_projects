import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{
  @override
  State createState() => new HomePageState();
}

class HomePageState extends State<HomePage> {

  var num1 = 0, num2 = 0, sum = 0;

  final TextEditingController t1 = new TextEditingController();
  final TextEditingController t2 = new TextEditingController();

  void add(){
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 + num2;
    });
  }

  void sub(){
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 - num2;
    });
  }
  void mul(){
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 * num2;
    });
  }
  void div(){
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 ~/ num2;
    });
  }
  void clear(){
    setState(() {
    t1.text = "";
    t2.text = "";

    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Calculator"),
      ),
      body: new Container(
          padding: const EdgeInsets.all(20),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new TextField(
              keyboardType: TextInputType.number ,
              decoration: new InputDecoration(hintText: "Enter number 1"),
              controller: t1,
            ),
            new Padding(
                padding: const EdgeInsets.only(top: 20)),
            new TextField(
              keyboardType: TextInputType.number ,
              decoration: new InputDecoration(hintText: "Enter number 2"),
              controller: t2,
            ),
            new Padding(
                padding: const EdgeInsets.only(top: 20)),
            new Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                new Text("Result = $sum",
                    style: new TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold
                    )
                ),
              ],
            ),
            new Padding(
                padding: const EdgeInsets.only(top: 20)),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new MaterialButton(
                    child: new Text("Add"),
                    splashColor: Colors.greenAccent,
                    textColor: Colors.white,
                    color: Colors.teal,
                    shape: StadiumBorder(),
                    onPressed: add),

                new MaterialButton(
                    child: new Text("Subtract"),
                    splashColor: Colors.greenAccent,
                    textColor: Colors.white,
                    color: Colors.teal,
                    shape: StadiumBorder(),
                    onPressed: sub),

              ],
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new MaterialButton(
                    child: new Text("Multiply"),
                    splashColor: Colors.greenAccent,
                    textColor: Colors.white,
                    color: Colors.teal,
                    shape: StadiumBorder(),
                    onPressed: mul),
                new MaterialButton(
                    child: new Text("Divide"),
                    splashColor: Colors.greenAccent,
                    textColor: Colors.white,
                    color: Colors.teal,
                    shape: StadiumBorder(),
                    onPressed: div),
              ],
            ),
            new Padding(
                padding: const EdgeInsets.only(top: 20)),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new MaterialButton(
                    child: new Text("Clear"),
                    splashColor: Colors.greenAccent,
                    textColor: Colors.white,
                    color: Colors.teal,
                    shape: StadiumBorder(),
                    onPressed: clear),
              ],
            )
          ],
        )
      ),
    );
  }
}
