import 'package:flutter/material.dart';
import 'package:saude_pet/styles/color.dart';

class PerfilUsuario extends StatefulWidget {
  @override
  _PerfilUsuarioState createState() => _PerfilUsuarioState();
}

class _PerfilUsuarioState extends State<PerfilUsuario> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Perfil Usuario",
          style: TextStyle(color: accentColor),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: accentColor,
          ),
          onPressed: () {
            Navigator.pushNamed(context, "/homePage");
          },
        ),
        backgroundColor: textPrimaryColor,
      ),
      backgroundColor: accentColor,
      body: SingleChildScrollView(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                padding: EdgeInsets.fromLTRB(20, 50, 20, 0),
                height: 500,
                child: Card(
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Icon(Icons.account_circle,size: 80,color: accentColor,),
                      Divider(
                        color: dividerColor,
                        height: 40,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            width: 185,
                            child: Text(
                              "Nome: ",
                              style: TextStyle(color: accentColor),
                            ),
                          ),
                          Container(
                            width: 85,
                            child: Text(
                              "Everton Santos",
                              style: TextStyle(color: accentColor),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            width: 185,
                            child: Text(
                              "Data de Nascimento: ",
                              style: TextStyle(color: accentColor),
                            ),
                          ),
                          Container(
                            width: 85,
                            child: Text(
                              "11/05/1996",
                              style: TextStyle(color: accentColor),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            width: 185,
                            child: Text(
                              "Email: ",
                              style: TextStyle(color: accentColor),
                            ),
                          ),
                          Container(
                            width: 85,
                            child: Text(
                              "Evsantos96@gmail.com",
                              style: TextStyle(color: accentColor,fontSize: 12),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            width: 185,
                            child: Text(
                              "Cpf: ",
                              style: TextStyle(color: accentColor),
                            ),
                          ),
                          Container(
                            width: 85,
                            child: Text(
                              "000.888.444-23",
                              style: TextStyle(color: accentColor,fontSize: 12),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            width: 185,
                            child: Text(
                              "Sexo: ",
                              style: TextStyle(color: accentColor),
                            ),
                          ),
                          Container(
                            width: 85,
                            child: Text(
                              "Masculino",
                              style: TextStyle(color: accentColor),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 26.0, horizontal: 36.0),
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24),
                          ),
                          onPressed: () {
                            Navigator.pushNamed(context, "/cadastroUsuario");
                          },
                          padding: EdgeInsets.all(12),
                          color: Colors.lightBlueAccent,
                          child: Text('Atualizar Dados',
                              style: TextStyle(color: Colors.white)),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
