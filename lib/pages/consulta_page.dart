import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/opcoes_pages.dart';
import 'package:flutter_application_1/pages/widgets.pages.dart';

class Consulta extends StatelessWidget {
  const Consulta({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    theme: ThemeData(
        fontFamily: 'Poppins',
      );
    return Scaffold(
      appBar: PreferredSize(
        preferredSize:
            Size.fromHeight(40.0), // Define a altura desejada do AppBar
        child: AppBar(
          backgroundColor: Color(0xFF00141b),
          title: Text(
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
                padding: EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
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
          padding: EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
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
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
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
  runApp(MaterialApp(
    home: Consulta(),
  ));
}
