import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/login.pages.dart';
import 'package:flutter_application_1/pages/transferencia.pages.dart';


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
        primaryColor: Color(0xFF00141b),
        scaffoldBackgroundColor: Color(0xFF00141b),
        appBarTheme: AppBarTheme(
          color: Color(0xFF00141b),
        ),
      ),
      home: Opcoes(),
    );
  }
}

class Opcoes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => LoginPage()),
            );
            // Ação ao pressionar a seta para a esquerda
          },
        ),
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
            'assets/Stock_Manager_logo.png',
            width: 70.0,
            height: 70.0,
          ),
        ],
      ),
      body: Center(
        
        child: GridView.count(
          crossAxisCount: 2, // Dois itens por linha
          padding: EdgeInsets.all(20.0),
          mainAxisSpacing: 40.0, // Espaçamento vertical entre os itens
          crossAxisSpacing: 30.0, // Espaçamento horizontal entre os itens
          children: [
            ButtonWithImage(
              image: AssetImage('assets/images/card1.png'),
              text: 'Consulta',
              onPressed: () {
                // Ação ao pressionar o botão 1
              },
            ),
            ButtonWithImage(
              image: AssetImage('assets/images/card2.png'),
              text: 'Cadastro ',
              onPressed: () {
                // Ação ao pressionar o botão 2
              },
            ),
            ButtonWithImage(
              image: AssetImage('assets/images/card3.png'),
              text: 'Recebimento de Produto',
              onPressed: () {
                // Ação ao pressionar o botão 3
              },
            ),
            ButtonWithImage(
              image: AssetImage('assets/images/card4.png'),
              text: 'Transferência',
              onPressed: () {
                Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => TransferenciaPage()),
                );
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
                // Ação ao pressionar o botão 6
              },
            ),
          ],
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
      height: 200,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          primary: Color(0xffFF914D),
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
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}