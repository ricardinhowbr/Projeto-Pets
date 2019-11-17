import 'package:flutter/material.dart';
import 'package:saude_pet/components/cards.dart';
import 'package:saude_pet/styles/color.dart';

class ListaVacinaHistorico extends StatefulWidget {
  @override
  _ListaVacinaHistoricoState createState() => _ListaVacinaHistoricoState();
}

class _ListaVacinaHistoricoState extends State<ListaVacinaHistorico> {
  int a = 0;
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text("Lista de Vacinas"),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Center(
        child: ListView(
          shrinkWrap: false,
          
          children: <Widget>[
            new CardVacina(
                vacina: "Gripe Canina",
                dataAplicacao: "15/08/2013",
                nomeAplicante: "Rodrigo",
                peso: "32 kg",
                dataProximaAplicacao: "20/08/2013"),
                new CardVacina(
                vacina: "Gripe Canina",
                dataAplicacao: "15/08/2013",
                nomeAplicante: "Rodrigo",
                peso: "32 kg",
                dataProximaAplicacao: "20/09/2017"),

          ],
        ),
      ),
    );
  }
}
