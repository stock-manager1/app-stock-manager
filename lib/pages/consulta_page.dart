// ignore_for_file: unused_import, avoid_print
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/opcoes_pages.dart';
import 'package:flutter_application_1/pages/widgets_pages.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stock Manager',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Poppins',
      ),
    );
  }
}

class Consulta extends StatelessWidget {
  const Consulta({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeData(
      fontFamily: 'Poppins',
    );
    return Scaffold(
      appBar: PreferredSize(
        preferredSize:
            const Size.fromHeight(40.0), // Define a altura desejada do AppBar
        child: AppBar(
          backgroundColor: const Color(0xFF00141b),
          title: const Text(
            'Consulta',
            style: TextStyle(
              fontWeight: FontWeight.bold,
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
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(15),
          color: const Color(0xFF00141b),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              const SizedBox(
                height: 30,
              ),
              search(),
              Container(
                padding: const EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    ButtonWithText(),
                    SizedBox(height: 20),
                    ButtonWithText1(),
                    SizedBox(height: 20),
                    ButtonWithText2(),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Align(
                alignment: Alignment.center,
                child: Image.asset(
                  'assets/images/Stock_Manager_logo.png',
                  width: 80.0,
                  height: 80.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ButtonWithText extends StatelessWidget {
  const ButtonWithText({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('Botão 1 pressionado!');
      },
      child: Container(
        width: 320, // Tamanho do card
        height: 150, // Tamanho do card
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), // Borda redonda
          color: const Color(0xffFF914D), // Cor de fundo do card
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Expanded(
                    child: Text(
                      'Cimento Royal',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      "RS 35,00",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Expanded(
                    child: Text(
                      'Lorem Ipsum Lorem Ipsum Lorem Ipsum ',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 14, color: Colors.white),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      'Qtde: 8',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 16, color: Colors.black),
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

class ButtonWithText1 extends StatelessWidget {
  const ButtonWithText1({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('Botão 1 pressionado!');
      },
      child: Container(
        width: 320, // Tamanho do card
        height: 150, // Tamanho do card
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), // Borda redonda
          color: const Color(0xffFF914D), // Cor de fundo do card
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Expanded(
                    child: Text(
                      'Telha Brasilit',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      "RS 90,00",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Expanded(
                    child: Text(
                      'Lorem Ipsum Lorem Ipsum Lorem Ipsum ',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 14, color: Colors.white),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      'Qtde: 5',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 16, color: Colors.black),
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

class ButtonWithText2 extends StatelessWidget {
  const ButtonWithText2({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('Botão 1 pressionado!');
      },
      child: Container(
        width: 320, // Tamanho do card
        height: 150, // Tamanho do card
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), // Borda redonda
          color: const Color(0xffFF914D), // Cor de fundo do card
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Expanded(
                    child: Text(
                      'Escada',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      "RS 130,00",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Expanded(
                    child: Text(
                      'Lorem Ipsum Lorem Ipsum Lorem Ipsum ',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 14, color: Colors.white),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      'Qtde: 2',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 16, color: Colors.black),
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

void main() {
  runApp(const MaterialApp(
    home: Consulta(),
  ));
}
