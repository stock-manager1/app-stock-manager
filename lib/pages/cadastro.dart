import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/configuracoes_pages.dart';
import 'package:flutter_application_1/pages/login_pages.dart';
import 'package:flutter_application_1/pages/recebimento_pages.dart';
import 'package:flutter_application_1/pages/transferencia_pages.dart';
import 'package:flutter_application_1/pages/widgets_pages.dart';
import 'package:flutter_application_1/pages/consulta_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stock Manager',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Poppins',
      ),
      home: Cadastro(),
    );
  }
}

class Cadastro extends StatelessWidget {
  final double appBarTopMargin = 0.0; // Margem superior do AppBar
  final double appBarBottomMargin = 0.0; // Margem inferior do AppBar

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize:
            Size.fromHeight(80.0 + appBarTopMargin + appBarBottomMargin),
        child: AppBar(
          backgroundColor: Color(0xFF00141b), // Definindo a cor preta
          title: Text(
            'Cadastrar',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
              color: Colors.white,
            ),
          ),
          centerTitle: true,
          actions: [
            Image.asset(
              'assets/images/Stock_Manager_logo.png',
              width: 80.0,
              height: 80.0,
            ),
          ],
        ),
      ),
      backgroundColor: Color(0xFF00141b),
      body: SingleChildScrollView(
  padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start, // Alinha os TextField à esquerda
    children: [
      SizedBox(height: 16.0),
      Container(
        width: 350.0,
        child: TextField(
          textAlign: TextAlign.left, // Alinha o texto à esquerda
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            hintText: 'Nome do Produto',
            hintStyle: TextStyle(
              color: Colors.black45,
              fontWeight: FontWeight.w400,
              fontSize: 16,
            ),
          ),
          style: TextStyle(
            fontSize: 20,
            fontFamily: 'Poppins',
            color: Colors.black,
          ),
        ),
      ),
      SizedBox(height: 60.0),
      Container(
        width: 200.0,
        child: TextField(
          textAlign: TextAlign.left,
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            hintText: 'Qtde de Entrada',
            hintStyle: TextStyle(
              color: Colors.black45,
              fontWeight: FontWeight.w400,
              fontSize: 16,
            ),
          ),
          style: TextStyle(
            fontSize: 20,
            fontFamily: 'Poppins',
            color: Colors.black,
          ),
        ),
      ),
      SizedBox(height: 60.0),
      Container(
        width: 200.0,
        child: TextField(
          textAlign: TextAlign.left,
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            hintText: 'Tipo',
            hintStyle: TextStyle(
              color: Colors.black45,
              fontWeight: FontWeight.w400,
              fontSize: 16,
            ),
          ),
          style: TextStyle(
            fontSize: 20,
            fontFamily: 'Poppins',
            color: Colors.black,
          ),
        ),
      ),
      SizedBox(height: 60.0),
      Container(
        width: 200.0,
        child: TextField(
          textAlign: TextAlign.left,
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            hintText: 'Marca',
            hintStyle: TextStyle(
              color: Colors.black45,
              fontWeight: FontWeight.w400,
              fontSize: 16,
            ),
          ),
          style: TextStyle(
            fontSize: 20,
            fontFamily: 'Poppins',
            color: Colors.black,
          ),
        ),
      ),
      SizedBox(height: 60.0),
      SizedBox(
        height: 40,
        width: 500,
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            primary: Color(0xFF5271FF),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          child: Text(
            'Cadastrar',
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
        ),
      ),
    ],
  ),
),
    );
  }
}
