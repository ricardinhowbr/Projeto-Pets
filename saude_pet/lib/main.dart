import 'package:flutter/material.dart';
import 'package:saude_pet/ui/cadastro_alarme.dart';
import 'package:saude_pet/ui/cadastro_page.dart';
import 'package:saude_pet/ui/cadastro_pet.dart';
import 'package:saude_pet/ui/cadastro_vacina.dart';
import 'package:saude_pet/ui/home_page.dart';
import 'package:saude_pet/ui/list_pet.dart';
import 'package:saude_pet/ui/list_vacina.dart';
import 'package:saude_pet/ui/lista_vacina.dart';
import 'package:saude_pet/ui/login.dart';
import 'package:saude_pet/ui/perfil_usuario.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        "/" : (context) => LoginPage(),
        "/cadastro": (context) => CadastroPage(),
        "/cadastroPet": (context) => CadastroPagePet(),
        "/listaPet": (context) => ListaPetPage(),
        "/perfilUsuario": (context) => PerfilUsuario(),
        "/cadastroAlarme": (context) => CadastroAlarme(),
        "/cadastroVacina": (context) => CadastroVacina(),
        "/listaVacina": (context) => ListaVacina(),
        "/listaVacinaHistorico": (context) => ListaVacinaHistorico(),
        "/homePage": (context) => HomePage()
      },
    );
  }
}