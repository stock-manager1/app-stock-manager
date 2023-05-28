// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/opcoes_pages.dart';
import 'package:flutter_application_1/pages/widgets_pages.dart';

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
                height: 60,
              ),
              search(),
              Container(
                padding: const EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    ButtonWithText(),
                    SizedBox(height: 20),
                    ButtonWithText(),
                    SizedBox(height: 20),
                    ButtonWithText(),
                  ],
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
    return Container(
      height: 150,
      width: double.infinity,
      child: Card(
        color: Colors.orange,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
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
                      'Texto 1',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      'Texto 2',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20, color: Colors.white),
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
                      'Texto 3',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      'Texto 4',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20, color: Colors.white),
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
