import 'package:flutter/material.dart';


class ListaVacinaHistorico extends StatefulWidget {
  @override
  _ListaVacinaHistoricoState createState() => _ListaVacinaHistoricoState();
}

class _ListaVacinaHistoricoState extends State<ListaVacinaHistorico> {
  @override
  Widget build(BuildContext context) {
    var title2 = "title";
        return Scaffold(
          appBar: AppBar(
            title: Text("Lista de Vacinas"),
            centerTitle: true,
            elevation: 0,
            backgroundColor: Colors.lightBlueAccent,
          ),
          body: Center(
            child: ListView(
              shrinkWrap: true,
              padding: EdgeInsets.fromLTRB(24, 0, 24, 0),
              children: <Widget>[
                Container(
                  width: 120.0,
                  height: 120.0,
                  child: Card(
                    elevation: 10,
                    child: Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Text(title2),
                        Text(title2)
                      ],
                    ),
                    SizedBox(height: 50.0,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Text(title2),
                            SizedBox(width: 15,),
                            Text(title2)
                          ],
                        ),
                        Text(title2)
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}