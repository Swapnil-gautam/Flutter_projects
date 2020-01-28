import 'package:flutter/material.dart';

void main()=> runApp(new MyApp());

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return new MaterialApp(
      home: new LoginPage(),
      theme: new ThemeData(
        primarySwatch: Colors.lightBlue
      )
    );
  }
}

class LoginPage extends StatefulWidget{
  @override
  State createState() => new LoginPageState();
}

class LoginPageState extends State<LoginPage> with SingleTickerProviderStateMixin{

  AnimationController iconanimationController;
  Animation<double> iconAnimation;
  @override
  void initState(){
    super.initState();
    iconanimationController = new AnimationController(vsync: this,
    duration: new Duration(milliseconds: 500)
    );
    iconAnimation = new CurvedAnimation(
        parent: iconanimationController, curve: Curves.easeOut);
    iconAnimation.addListener(()=> this.setState((){}));
    iconanimationController.forward();
  }

  @override
  Widget build(BuildContext context){
    return new Scaffold(
      backgroundColor: Colors.white70,
      body: new Stack(
        fit: StackFit.expand,
        children: <Widget>[
          new Image(
            image: new AssetImage("assets/background.jpeg"),
            fit: BoxFit.cover,
            color: Colors.white70,
            colorBlendMode: BlendMode.luminosity,
          ),
          new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new FlutterLogo(
                size: iconAnimation.value * 100,

              ),
              new Form(
                  child: Theme(
                    data: new ThemeData(
                      brightness: Brightness.light,
                      //primarySwatch: Colors.lightBlue
                      inputDecorationTheme: new InputDecorationTheme(
                        labelStyle: new TextStyle(
                          fontSize: 20.0
                        )
                      )
                    ),
                    child: new Container(
                      padding: const EdgeInsets.all(40.0),
                      child: new Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          new TextFormField(
                            decoration: new InputDecoration(
                              labelText: "Enter Email",
                            ),
                            keyboardType: TextInputType.emailAddress,
                          ),
                          new TextFormField(
                            decoration: new InputDecoration(
                              labelText: "Enter Password",
                            ),
                            keyboardType: TextInputType.text,
                            obscureText: true,
                          ),
                          new Padding(
                            padding: const EdgeInsets.only(top: 20.0),
                          ),
                          new MaterialButton(
                              color: Colors.black38,
                              textColor: Colors.white,
                              child: new Text("Login",),
                              onPressed: ()=>{}),
                        ],
                      ),
                    ),
                  ),
              )
            ],
           ),
          ],
      ),
    );
  }
}