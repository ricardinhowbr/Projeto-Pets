import 'package:flutter/material.dart';
import 'package:saude_pet/components/cards.dart';

class ListaVacina extends StatefulWidget {
  @override
  _ListaVacinaState createState() => _ListaVacinaState();
}

class _ListaVacinaState extends State<ListaVacina> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Vacinas"),
        elevation: 0,
        backgroundColor: Colors.lightBlueAccent,
        centerTitle: true,
      ),
       body: Center(
          child: ListView(
            shrinkWrap: true,
            padding: EdgeInsets.only(left: 24.0, right: 24.0),
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CardListImage(
                    titleCard: "Lista de Vacinas",
                    iconsCard: 'lib/images/vacina.png',
                    routeName: "/listaVacinaHistorico",
                  ),
                  CardList(
                    titleCard: "Adicionar nova Vacina",
                    iconsCard: Icons.add_circle_outline,
                    routeName: "/cadastroVacina",
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CardList(
                    titleCard: "Busca Vacina",
                    iconsCard: Icons.search,
                    routeName: "",
                  )
                ],
              ),
            ],
          ),
        )
    );
  }
}