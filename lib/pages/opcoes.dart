import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/login.pages.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Opções de comnado',
      debugShowCheckedModeBanner: false,
      home: Opcoes(),
    );
  }
}

class Opcoes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // .....
      title: 'Cards',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Poppins',
      ),
      home: Scaffold(
        body: Container(
          color: const Color(0xFF00141b),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(2.0),
                child: Row(
                  children: [
                    Spacer(),
                    IconButton(
                      icon: Icon(Icons.arrow_back),
                      color: Colors.white,
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => LoginPage()),
                      );
                      },
                    ),
                    Spacer(),
                    Text(
                      'Stock Manager',
                      style: TextStyle(
                        fontSize: 24.0,
                        color: Colors.white,
                      ),
                    ),
                    Spacer(),
                    Image.asset(
                      'assets/Stock_Manager_logo.png',
                      width: 80.0,
                      height: 80.0,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 2.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

                  Expanded(
                    
                      child: Card(
                        color: Color(0xffFF914D),
                        elevation: 15.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/card1.png',
                              width: 110.0,
                              height: 110.0,
                            ),
                            SizedBox(height: 25.0),
                            Text(
                              'Consulta',
                              style: TextStyle(
                                fontSize: 16.0,
                                fontFamily: 'Poppins',
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                    ),
                  ),
                  SizedBox(width: 25.0),
                  Expanded(
                    child: Card(
                      color: Color(0xffFF914D),
                      elevation: 15.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/card2.png',
                            width: 110.0,
                            height: 110.0,
                          ),
                          SizedBox(height: 25.0),
                          Text(
                            'Cadastro',
                            style: TextStyle(
                              fontSize: 16.0,
                              fontFamily: 'Poppins',
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Card(
                      color: Color(0xffFF914D),
                      elevation: 15.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/card3.png',
                            width: 105.0,
                            height: 105.0,
                          ),
                          SizedBox(height: 10.0),
                          Text(
                            'Recebimento de Produto',
                            style: TextStyle(
                              fontSize: 16.0,
                              fontFamily: 'Poppins',
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 25.0),
                  Expanded(
                    child: Card(
                      color: Color(0xffFF914D),
                      elevation: 15.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/card4.png',
                            width: 110.0,
                            height: 110.0,
                          ),
                          SizedBox(height: 25.0),
                          Text(
                            'Transferência',
                            style: TextStyle(
                              fontSize: 16.0,
                              fontFamily: 'Poppins',
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Card(
                      color: Color(0xffFF914D),
                      elevation: 15.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/card5.png',
                            width: 110.0,
                            height: 110.0,
                          ),
                          SizedBox(height: 25.0),
                          Text(
                            'Configuração',
                            style: TextStyle(
                              fontSize: 16.0,
                              fontFamily: 'Poppins',
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 25.0),
                  Expanded(
                    child: Card(
                      color: Color(0xffFF914D),
                      elevation: 15.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/card6.png',
                            width: 110.0,
                            height: 110.0,
                          ),
                          SizedBox(height: 25.0),
                          Text(
                            'Sair',
                            style: TextStyle(
                              fontSize: 16.0,
                              fontFamily: 'Poppins',
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
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
