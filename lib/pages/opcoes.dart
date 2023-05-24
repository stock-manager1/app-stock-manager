import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/login.pages.dart';
import 'package:flutter_application_1/pages/recebimento.pages.dart';
import 'package:flutter_application_1/pages/transferencia.pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stock Manager',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xFF00141b),
        scaffoldBackgroundColor: const Color(0xFF00141b),
        appBarTheme: const AppBarTheme(
          color: Color(0xFF00141b),
        ),
      ),
      home: const Opcoes(),
    );
  }
}

class Opcoes extends StatelessWidget {
  const Opcoes({super.key});

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
                padding: const EdgeInsets.all(2.0),
                child: Row(
                  children: [
                    const Spacer(),
                    IconButton(
                      icon: const Icon(Icons.arrow_back),
                      color: Colors.white,
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => const LoginPage()),
                        );
                      },
                    ),
                    const Spacer(),
                    const Text(
                      'Stock Manager',
                      style: TextStyle(
                        fontSize: 24.0,
                        color: Colors.white,
                      ),
                    ),
                    const Spacer(),
                    Image.asset(
                      'assets/images/Stock_Manager_logo.png',
                      width: 80.0,
                      height: 80.0,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 2.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Card(
                      color: const Color(0xffFF914D),
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
                          const SizedBox(height: 25.0),
                          const Text(
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
                  const SizedBox(width: 25.0),
                  Expanded(
                    child: Card(
                      color: const Color(0xffFF914D),
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
                          const SizedBox(height: 25.0),
                          const Text(
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
              const SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const RecebimentoPage()),
                        );
                      },
                      child: Card(
                        color: const Color(0xffFF914D),
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
                            const SizedBox(height: 10.0),
                            const Text(
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
                  ),
                  const SizedBox(width: 25.0),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const TransferenciaPage()),
                        );
                      },
                      child: Card(
                        color: const Color(0xffFF914D),
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
                            const SizedBox(height: 25.0),
                            const Text(
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
                  ),
                ],
              ),
              const SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Card(
                      color: const Color(0xffFF914D),
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
                          const SizedBox(height: 25.0),
                          const Text(
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
                  const SizedBox(width: 25.0),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        showExitConfirmationDialog(context);
                      },
                      child: Card(
                        color: const Color(0xffFF914D),
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
                            const SizedBox(height: 25.0),
                            const Text(
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

void showExitConfirmationDialog(BuildContext context) => showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Confirmação'),
          content: const Text('Deseja Encerrar a sessão?'),
          actions: [
            TextButton(
              child: const Text('Cancelar'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: const Text('Sair'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginPage()),
                );
              },
            ),
          ],
        );
      },
    );
