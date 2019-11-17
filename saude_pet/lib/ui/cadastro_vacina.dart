import 'package:flutter/material.dart';
import 'package:saude_pet/styles/color.dart';

class CadastroVacina extends StatefulWidget {
  @override
  _CadastroVacinaState createState() => _CadastroVacinaState();
}

class _CadastroVacinaState extends State<CadastroVacina> {
  @override
  Widget build(BuildContext context) {
    final vacinaLogo = Hero(
      tag: 'vacina',
      child: CircleAvatar(
          backgroundColor: accentColor,
          radius: 48.0,
          child: Image.asset('lib/images/vacina.png')),
    );
    final nameVacina = TextFormField(
      keyboardType: TextInputType.text,
      autofocus: false,
      decoration: InputDecoration(
        hintText: 'Nome da Vacina',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );
    final data = TextFormField(
      autofocus: false,
      obscureText: true,
      keyboardType: TextInputType.datetime,
      decoration: InputDecoration(
        hintText: 'Data',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );
    final peso = TextFormField(
      autofocus: false,
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Peso',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );
    final responsavel = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      decoration: InputDecoration(
        hintText: 'Nome do Responsavel',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );
    final proximaAplicacao = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      decoration: InputDecoration(
        hintText: 'Proxima Aplicação',
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
        child: Text('Cadastrar', style: TextStyle(color: Colors.white)),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text("Cadastro de Vacina"),
        centerTitle: true,
        elevation: 0,
        backgroundColor: accentColor,
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
            SizedBox(
              height: 30,
            ),
            vacinaLogo,
            SizedBox(height: 70.0),
            nameVacina,
            SizedBox(
              height: 15.0,
            ),
            data,
            SizedBox(height: 15.0),
            peso,
            SizedBox(
              height: 15.0,
            ),
            responsavel,
            SizedBox(
              height: 15.0,
            ),
            proximaAplicacao,
            SizedBox(height: 30.0),
            atualizarButton,
          ],
        ),
      ),
    );
  }
}
