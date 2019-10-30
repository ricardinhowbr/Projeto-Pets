import 'package:flutter/material.dart';


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
        child: Card(
          elevation: 12,
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
                    TextStyle(color: Colors.lightBlueAccent[400]),
              ),
              SizedBox(
                height: 10.0,
              ),
              Icon(
                iconsCard,
                color: Colors.lightBlueAccent,
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
        child: Card(
          elevation: 12,
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
                    TextStyle(color: Colors.lightBlueAccent[400]),
              ),
              SizedBox(
                height: 10.0,
              ),
              Image.asset(iconsCard,width: 23,color: Colors.lightBlueAccent,),
            ],
          ),
        ),
      ),
    );
  }
}

