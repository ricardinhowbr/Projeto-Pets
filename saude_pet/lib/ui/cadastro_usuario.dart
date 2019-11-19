import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

class CadastroUsuario extends StatefulWidget {
  @override
  _CadastroUsuarioState createState() => _CadastroUsuarioState();
}

class _CadastroUsuarioState extends State<CadastroUsuario> {
  var controller = new MaskedTextController(mask: '000.000.000-00');
  @override
  Widget build(BuildContext context) {
    final logo = Hero(
      tag: 'user',
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 48.0,
        child: Icon(
          Icons.account_circle,
          size: 150,
        ),
      ),
    );
  final name = TextFormField(
      keyboardType: TextInputType.text,
      autofocus: false,
      decoration: InputDecoration(
        hintText: 'Everton Santos de Souza',
        labelText: "NomeCompleto",
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );
    final email = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      decoration: InputDecoration(
        hintText: 'evsantos96@gmail.com',
        labelText: "Email",
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final password = TextFormField(
      autofocus: false,
      obscureText: true,
      decoration: InputDecoration(
        hintText: '.........',
        labelText: "Senha",
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );
    final cpf = TextFormField(
      autofocus: false,
      obscureText: false,
      controller: controller,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        hintText: '01770597298',
        labelText: "Cpf",
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
          Navigator.pushNamed(context,"/cadastroUsuario");
        },
        padding: EdgeInsets.all(12),
        color: Colors.lightBlueAccent,
        child: Text('Atualizar Dados', style: TextStyle(color: Colors.white)),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text("Perfil do usuario"),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.lightBlueAccent,
        
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
            logo,
            SizedBox(height: 108.0),
            name,
            SizedBox(height: 15.0,),
            email,
            SizedBox(height: 15.0),
            password,
            SizedBox(height: 15.0),
            cpf,
            SizedBox(height: 30.0),
            atualizarButton,
          ],
        ),
      ),
    );
  }
}