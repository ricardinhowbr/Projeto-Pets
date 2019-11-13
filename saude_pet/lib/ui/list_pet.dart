import 'package:flutter/material.dart';
import 'package:saude_pet/components/cards.dart';

class ListaPetPage extends StatefulWidget {
  @override
  _ListaPetPageState createState() => _ListaPetPageState();
}

class _ListaPetPageState extends State<ListaPetPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Lista de Pets"),
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.lightBlueAccent,
        ),
        backgroundColor: Colors.white,
        body: Center(
          child: ListView(
            shrinkWrap: true,
            padding: EdgeInsets.only(left: 24.0, right: 24.0),
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  CardListImage(
                    titleCard: "Cachorro",
                    iconsCard: 'lib/images/dog.png',
                    routeName: "/homePage",
                  ),
                  CardList(
                    titleCard: "Adicionar novo pet",
                    iconsCard: Icons.add_circle_outline,
                    routeName: "/cadastroPet",
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
