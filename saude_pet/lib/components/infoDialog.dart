import 'package:flutter/material.dart';
import 'package:saude_pet/styles/color.dart';

void infoDialog(BuildContext context, {BuildContext context}) {
  var alertDialog = AlertDialog(
    title: Text("Dados Salvos Com Sucesso",style: TextStyle(color: accentColor),), 
    content: Text("Já é possivel acessar o perfil do seu pet",style: TextStyle(color: accentColor),),
    actions: <Widget>[
      FlatButton(
        onPressed: (){
          Navigator.pushNamed(context, '/listaPet');
        },
        child: Text('Ok'),
      ),
    ],
  );

  showDialog(
    
    context: context,
    
    builder: (BuildContext context){
      return alertDialog;
    }
    
  );
}