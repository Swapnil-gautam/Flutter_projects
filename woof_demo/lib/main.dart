import 'package:flutter/material.dart';

import 'signup.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder> {
        '/signup': (BuildContext context) => new SignupPage()
      },
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: new Color(0xFFF8BBD0),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            child: Stack(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(20.0, 110, 0.0, 0.0),
                  child: Text(
                    'Woof',
                      style: TextStyle(
                        fontSize: 80.0, fontWeight: FontWeight.bold, color: Colors.white,
                         /* shadows: [
                      Shadow( // bottomLeft
                      offset: Offset(-1.5, -1.5),
                      color: Colors.black
                  ),
      Shadow( // bottomRight
          offset: Offset(1.5, -1.5),
          color: Colors.black
      ),
      Shadow( // topRight
          offset: Offset(1.5, 1.5),
          color: Colors.black
      ),
      Shadow( // topLeft
          offset: Offset(-1.5, 1.5),
          color: Colors.black
      ),
      ], */)
                      ),
                  ),
                Container(
                  padding: EdgeInsets.fromLTRB(20.0, 185, 0.0, 0.0),
                  child: Text(
                      'There.',
                      style: TextStyle(
                        /*shadows: [
                          Shadow( // bottomLeft
                              offset: Offset(-1.5, -1.5),
                              color: Colors.black
                          ),
                          Shadow( // bottomRight
                              offset: Offset(1.5, -1.5),
                              color: Colors.black
                          ),
                          Shadow( // topRight
                              offset: Offset(1.5, 1.5),
                              color: Colors.black
                          ),
                          Shadow( // topLeft
                              offset: Offset(-1.5, 1.5),
                              color: Colors.black
                          ),
                        ],*/
                          fontSize: 80.0, fontWeight: FontWeight.bold, color: Colors.white,
                      )
                  ),
                ),
                ],
              )
            ),

          Container(
            padding: EdgeInsets.only(top:35, left: 20, right: 20),
            child: Column(
              children: <Widget>[
                TextField(

                  style: TextStyle(
                    color: Colors.pink,
                  ),

                  cursorColor: Colors.pink,

                  decoration: InputDecoration(
                    labelText: 'EMAIL',
                    labelStyle: TextStyle(

                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                    ),

                      enabledBorder: const UnderlineInputBorder(
                        borderSide: const BorderSide(color: Colors.white, width: 1.0),
                      ),

                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white)
                    )
                  ),
                ),
                SizedBox(height: 20.0),
                TextField(

                    style: TextStyle(
                      color: Colors.pink,
                    ),

                    cursorColor: Colors.pink,

                  decoration: InputDecoration(
                      labelText: 'PASSWORD',
                      labelStyle: TextStyle(
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                      ),

                      enabledBorder: const UnderlineInputBorder(
                        borderSide: const BorderSide(color: Colors.white, width: 1.0),
                      ),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)
                      )
                  ),
                    obscureText: true
                ),
                SizedBox(height: 5),
                Container(
                  alignment: Alignment(1,0),
                  padding: EdgeInsets.only(top: 15, left:20),
                  child: InkWell(
                    child: Text('Forget Password ?',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Montserrat',
                        decoration: TextDecoration.underline
                      ),
                    )
                  )
                ),
                SizedBox(height: 60),

                Container(
                  height: 40,
                  width: 230,
                  child: Material(
                    borderRadius: BorderRadius.circular(20.0),
                    shadowColor: Colors.pinkAccent,
                    color: new Color(0xFFEC407A),
                    elevation: 7.0,
                    child: GestureDetector(
                      onTap:() {},
                        child: Center(
                            child: Text(
                                'LOGIN',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Montserrat'
                                )
                            )
                        )
                    ),
                  ),
                ),

                /*SizedBox(height: 20),

                  Container(
                  height: 40,
                  width: 230,

                  child: Material(
                    borderRadius: BorderRadius.circular(20.0),
                    shadowColor: Colors.pinkAccent,
                    color: new Color(0xFFEC407A),
                    elevation: 7.0,
                    child: GestureDetector(
                        onTap:() {},
                        child: Center(
                            child: Text(
                                'Login with Google',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Montserrat'
                                )
                            )
                        )
                    ),
                  ),
                ), */

                SizedBox(height: 25),
                Container(
                  height: 40,
                  width: 230,

                  child: Container(

                    decoration: BoxDecoration(

                      border: Border.all(

                        color: Colors.black,
                        style: BorderStyle.solid,
                        width: 1.5
                      ),
                          color: Colors.transparent,
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child:Row(

                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[

                        Center(
                          child: Text('Login with Google',

                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Montserrat'
                          )
                          )
                        )
                      ],
                    )
                  )
                ),

                SizedBox(height:  70),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'New to Woof?',
                      style: TextStyle(
                          color: Colors.white,
                        fontFamily: 'Montserrat'
                      ),
                    ),
                    SizedBox(width: 5),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pushNamed('/signup');
                      },
                      child: Text('Register Here',
                        style: TextStyle(
                            color: Colors.pinkAccent,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline
                         )
                      ),



                    )

                  ]
                )

              ],
            ),
          )
          ],
        ),
    );
  }
}
