 import 'package:flutter/material.dart';

 
showAlertDialog2(BuildContext context) {
   Widget cancelaButton = FlatButton(
    child: Text("Cancelar"),
    onPressed:  () {},
  );
  Widget continuaButton = FlatButton(
    child: Text("Continar"),
    onPressed:  () {},
  );
  //configura o AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("AlertDialog"),
    content: Text("Deseja continuar aprendendo Flutter ?"),
    actions: [
      cancelaButton,
      continuaButton,
    ],
  );
  //exibe o diálogo
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}