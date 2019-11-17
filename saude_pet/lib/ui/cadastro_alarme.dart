import 'package:flutter/material.dart';
import 'package:saude_pet/styles/color.dart';

class CadastroAlarme extends StatefulWidget {
  @override
  _CadastroAlarmeState createState() => _CadastroAlarmeState();
}

class _CadastroAlarmeState extends State<CadastroAlarme> {
  @override
  Widget build(BuildContext context) {
    final logo = Hero(
      tag: 'alert',
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 48.0,
        child: Icon(
          Icons.add_alert,
          size: 150,
        ),
      ),
    );
  final name = TextFormField(
      keyboardType: TextInputType.text,
      autofocus: false,
      decoration: InputDecoration(
        hintText: 'Nome do Alerta',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );
  
  final data = TextFormField(
      autofocus: false,
      keyboardType: TextInputType.datetime,
      obscureText: false,
      decoration: InputDecoration(
        hintText: 'Data de Notificação',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );
  final nameVacina = TextFormField(
      autofocus: false,
      keyboardType: TextInputType.text,
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Nome da Vacina',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );
    final atualizarButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        onPressed: () {
          // Navigator.push(
          //   context, MaterialPageRoute(builder: (context) => ListaPetPage()));
        },
        padding: EdgeInsets.all(12),
        color: Colors.lightBlueAccent,
        child: Text('Novo Alarme', style: TextStyle(color: Colors.white)),
      ),
    );
   
    return Scaffold(
      appBar: AppBar(
        title: Text("Cadastro de Alarme"),
        centerTitle: true,
        elevation: 0,
        backgroundColor: accentColor,
      ),
      body:Center(
        child: ListView(
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
            logo,
            SizedBox(height: 118.0),
            name,
            SizedBox(height: 15.0,),
            data,
            SizedBox(height: 15.0),
            nameVacina,
            SizedBox(height: 30.0),
            atualizarButton,
          ],
        ),
      ),
    );
  }
}