import 'package:flutter/material.dart';
import 'package:saude_pet/styles/color.dart';

class PerfilPet extends StatefulWidget {
  @override
  _PerfilPetState createState() => _PerfilPetState();
}

class _PerfilPetState extends State<PerfilPet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Perfil Pet",
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
                      Image.asset(
                        'lib/images/dog.png',
                        width: 23,
                        height: 80,
                        color: accentColor,
                      ),
                      Divider(
                        color: dividerColor,
                        height: 40,
                      ),
                      SizedBox(
                        height: 40,
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
                              "Lib",
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
                              "11/05/2009",
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
                              "Raça: ",
                              style: TextStyle(color: accentColor),
                            ),
                          ),
                          Container(
                            width: 85,
                            child: Text(
                              "basset",
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
                              "Cor: ",
                              style: TextStyle(color: accentColor),
                            ),
                          ),
                          Container(
                            width: 85,
                            child: Text(
                              "Castanho e Branco",
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
                            Navigator.pushNamed(context, "/atualizarPet");
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
