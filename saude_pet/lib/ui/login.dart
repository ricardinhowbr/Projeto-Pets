 
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Container(
        decoration: BoxDecoration(
         gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomCenter,
                colors: [Colors.green, Colors.green[700]])
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Card(
              elevation: 5,
              child: Form(
                child: Container(
                  width: 320.0,
                  height: 420.0,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Text(
                            "Login",
                            style: TextStyle(
                                fontSize: 26.0,color: Colors.black87)
                          ),
                          SizedBox(
                            width: 280.0,
                            child: Divider(
                              color: Color.fromRGBO(204, 204, 204, 1),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 50.0,
                        width: 280.0,
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: "Usuario",
                          ),
                          keyboardType: TextInputType.text,
                        ),
                      ),
                      Column(
                        children: <Widget>[
                          SizedBox(
                            width: 280.0,
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: "Senha",
                              ),
                              keyboardType: TextInputType.number,
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 10.0,),
                            alignment: Alignment.center,
                              child: Text(
                            "Criar Conta",
                            style: TextStyle(
                                 fontSize: 12.0, ),
                          ))
                        ],
                      ),
                      Container(
                        width: 280.0,
                        
                        child: RaisedButton(
                          onPressed: (){},
                          color: Colors.green,  
                          child: Text(
                            "Entrar",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}