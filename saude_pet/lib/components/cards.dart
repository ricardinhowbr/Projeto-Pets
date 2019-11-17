import 'package:flutter/material.dart';
import 'package:saude_pet/styles/color.dart';


class CardList extends StatelessWidget {
  const CardList({
    Key key,
    @required this.routeName,
    @required this.titleCard,
    @required this.iconsCard,
  }) : super(key: key);

  final String routeName;
  final String titleCard;
  final IconData iconsCard;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, routeName);
      },
      child: Container(
        width: 160.0,
        height: 160.0,
        padding: EdgeInsets.only(bottom: 10.0),
        child: Card(
          elevation: 8,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          color: Colors.white, 
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                titleCard,
                style:
                    TextStyle(color: accentColor),
              ),
              SizedBox(
                height: 10.0,
              ),
              Icon(
                iconsCard,
                color: accentColor,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CardListImage extends StatelessWidget {
  const CardListImage({
    Key key,
    @required this.routeName,
    @required this.titleCard,
    @required this.iconsCard,
  }) : super(key: key);

  final String routeName;
  final String titleCard;
  final String iconsCard;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, routeName);
      },
      child: Container(
        width: 160.0,
        height: 160.0,
        padding: EdgeInsets.only(bottom: 10.0),
        child: Card(
          elevation: 8,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                titleCard,
                style:
                    TextStyle(color: accentColor),
              ),
              SizedBox(
                height: 10.0,
              ),
              Image.asset(iconsCard,width: 23,color: accentColor,),
            ],
          ),
        ),
      ),
    );
  }
}

class CardVacina extends StatelessWidget {
  const CardVacina({
    Key key,
    @required this.vacina,
    @required this.dataAplicacao,
    @required this.nomeAplicante,
    @required this.peso,
    @required this.dataProximaAplicacao,
  }) : super(key: key);

  final String vacina;
  final String dataAplicacao;
  final String nomeAplicante;
  final String peso;
  final String dataProximaAplicacao;

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.fromLTRB(20, 50, 20, 0),
      padding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 20),
      height: 200,
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                    width: 185,
                    child: Text(
                      "Nome da Vacina: ",
                      style: TextStyle(color: accentColor, fontSize: 13),
                    ),
                  ),
                  Container(
                    width: 85,
                    child: Text(
                      vacina,
                      style: TextStyle(color: accentColor, fontSize: 12),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 185,
                    child: Text(
                      "Data de Aplicação: ",
                      style: TextStyle(color: accentColor, fontSize: 13),
                    ),
                  ),
                  Container(
                    width: 85,
                    child: Text(
                      dataAplicacao,
                      style: TextStyle(color: accentColor, fontSize: 12),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 185,
                    child: Text(
                      "Nome no Aplicação: ",
                      style: TextStyle(color: accentColor, fontSize: 13),
                    ),
                  ),
                  Container(
                    width: 85,
                    child: Text(
                      nomeAplicante,
                      style: TextStyle(color: accentColor, fontSize: 12),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 185,
                    child: Text(
                      "Peso: ",
                      style: TextStyle(color: accentColor, fontSize: 13),
                    ),
                  ),
                  Container(
                    width: 85,
                    child: Text(
                      peso,
                      style: TextStyle(color: accentColor, fontSize: 12),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 185,
                    child: Text(
                      "Proximo Aplicação: ",
                      style: TextStyle(color: accentColor, fontSize: 13),
                    ),
                  ),
                  Container(
                    width: 85,
                    child: Text(
                      dataProximaAplicacao,
                      style: TextStyle(color: accentColor, fontSize: 12),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}


