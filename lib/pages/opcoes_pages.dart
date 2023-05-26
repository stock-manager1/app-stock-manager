import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/login.pages.dart';
import 'package:flutter_application_1/pages/recebimento.pages.dart';
import 'package:flutter_application_1/pages/transferencia.pages.dart';
import 'package:flutter_application_1/pages/widgets.pages.dart';
import 'package:flutter_application_1/pages/consulta_page.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stock Manager',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Poppins',
      ),
      home: OpcaoPage(),
    );
  }
}

class OpcaoPage extends StatelessWidget {
  final double appBarTopMargin = 0.0; // Margem superior do AppBar
  final double appBarBottomMargin = 0.0; // Margem inferior do AppBar

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize:
        
            Size.fromHeight(80.0 + appBarTopMargin + appBarBottomMargin),
        child: Container(
          margin:
              EdgeInsets.only(top: appBarTopMargin, bottom: appBarBottomMargin),
          child: AppBar(
            backgroundColor: Color(0xFF00141b), // Definindo a cor preta
            title: Text(
              'Stock Manager',
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
      ),
      body: Container(
        color: Color(0xFF00141b), // Definindo a cor preta
        child: Center(
          child: GridView.count(
            crossAxisCount: 2, // Dois itens por linha
            padding: EdgeInsets.all(20.0),
            mainAxisSpacing: 50.0, // Espaçamento vertical entre os itens
            crossAxisSpacing: 30.0, // Espaçamento horizontal entre os itens
            children: [
              ButtonWithImage(
                image: AssetImage('assets/images/card1.png'),
                text: 'Consulta',
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Consulta()));
                  // Ação ao pressionar o botão 1
                },
              ),
              ButtonWithImage(
                image: AssetImage('assets/images/card2.png'),
                text: 'Cadastro',
                onPressed: () {
                  // Ação ao pressionar o botão 2
                },
              ),
              ButtonWithImage(
                image: AssetImage('assets/images/card3.png'),
                text: 'Recebimento de Produto',
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => RecebimentoPage()));
                  // Ação ao pressionar o botão 3
                },
              ),
              ButtonWithImage(
                image: AssetImage('assets/images/card4.png'),
                text: 'Transferência',
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => TransferenciaPage()));
                  // Ação ao pressionar o botão 4
                },
              ),
              ButtonWithImage(
                image: AssetImage('assets/images/card5.png'),
                text: 'Configuração',
                onPressed: () {
                  // Ação ao pressionar o botão 5
                },
              ),
              ButtonWithImage(
                image: AssetImage('assets/images/card6.png'),
                text: 'Sair',
                onPressed: () {
                  showExitConfirmationDialog(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ButtonWithImage extends StatelessWidget {
  final ImageProvider image;
  final String text;
  final VoidCallback onPressed;

  const ButtonWithImage({
    required this.image,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xffFF914D),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: image,
              fit: BoxFit.contain,
            ),
            SizedBox(height: 8.0),
            Text(
              text,
              style: TextStyle(
                fontSize: 16.0,
                fontFamily: 'Poppins',
                color: Colors.white,
              ),
            ),
          ],
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
      content: const Text('Deseja encerrar a sessão?'),
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
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => LoginPage()),
              (Route<dynamic> route) => false, // Remove todas as rotas anteriores
            );
          },
        ),
      ],
    );
  },
);