import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomCenter,
                colors: [Colors.indigoAccent, Colors.indigo[800]])),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                 Container(
                   width: 300,
                   height: 450,
                   child: Card(
                     elevation: 8,
                     child:
                   Column(
                     children: <Widget>[
                       Text("Login",style: TextStyle(fontSize: 22,),),
                       TextField(decoration: InputDecoration(border: OutlineInputBorder()),),
                       Divider(color: Colors.transparent,),
                       TextField(decoration: InputDecoration(border: OutlineInputBorder()),),
                       FlatButton(
                         onPressed: (){},
                         child: Text
                       ("Entrar"),
                       ),
                     ],),
                   ),
                 ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}