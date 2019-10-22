import 'package:flutter/material.dart';
import 'package:saude_pet/ui/login.dart';

void main() {
  runApp(MaterialApp(
    home: Login(),
    theme: ThemeData(
        primaryColorDark: Color.fromRGBO(56, 142, 60, 1),
        primaryColorLight: Color.fromRGBO(200,230,201,1),
        primaryColor: Colors.green,
        accentColor: Color.fromRGBO(139, 195, 74, 1),
        dividerColor: Color.fromRGBO(189,189,189,1)
        ),
    debugShowCheckedModeBanner: false,
  ));
}
