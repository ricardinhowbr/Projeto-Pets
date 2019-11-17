import 'package:flutter/material.dart';
import 'package:saude_pet/components/cards.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  final rowListOne = Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      CardList(
        titleCard: "Usuario",
        routeName: "/perfilUsuario",
        iconsCard: Icons.account_circle,
      ),
      CardListImage(
        titleCard: "Vacinas",
        routeName: "/listaVacina",
        iconsCard: 'lib/images/vacina.png',
      ),
    ],
  );
  final rowListTwo = Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      CardListImage(
        titleCard: "Perfil do Pet",
        iconsCard: "lib/images/dog.png",
        routeName: "/perfilPet",
      ),
    ],
  );
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        backgroundColor: Colors.lightBlueAccent,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(icon: Icon(Icons.arrow_back,color: Colors.transparent,), onPressed: () {},),
        actions: <Widget>[
          IconButton(
            onPressed: (){
              Navigator.pushNamed(context, "/");
            },
            icon: Icon(Icons.exit_to_app),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[SizedBox(height: 100.0,), rowListOne, SizedBox(height: 20.0,), rowListTwo],
        ),
      ),
    );
  }
}
