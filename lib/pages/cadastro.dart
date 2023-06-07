import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;

void main() async {
  await dotenv.load();
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
  final double appBarTopMargin = 0.0;
  final double appBarBottomMargin = 0.0;

  final TextEditingController nomeProdutoController = TextEditingController();
  final TextEditingController qtdeEntradaController = TextEditingController();
  final TextEditingController tipoController = TextEditingController();
  final TextEditingController marcaController = TextEditingController();

  final String? _host = dotenv.env['HOSTNAME'];

  Future<void> cadastrarProduto() async {
    var url = Uri.parse('$_host/user/login');
    String nome = nomeProdutoController.text;
    String quantidade = qtdeEntradaController.text;
    String tipo = tipoController.text;
    String marca = marcaController.text;

    var cadastroRequest = {
      'nome': nome,
      'quantidade': quantidade,
      'tipo': tipo,
      'marca': marca,
    };

    print(cadastroRequest);

    var response = await http.post(
      url,
      body: cadastroRequest,
    );

    if (response.statusCode == 200) {
      print('Produto cadastrado com sucesso');
    } else {
      print('Erro ao cadastrar o produto');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize:
            Size.fromHeight(80.0 + appBarTopMargin + appBarBottomMargin),
        child: AppBar(
          backgroundColor: Color(0xFF00141b),
          title: Text(
            'Cadastrar',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
              color: Colors.white,
            ),
          ),
          centerTitle: true,
        ),
      ),
      backgroundColor: Color(0xFF00141b),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 16.0),
            Container(
              width: 370.0,
              child: TextField(
                controller: nomeProdutoController,
                textAlign: TextAlign.left,
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
              width: 370.0,
              child: TextField(
                controller: qtdeEntradaController,
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
              width: 370.0,
              child: TextField(
                controller: tipoController,
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
              width: 370.0,
              child: TextField(
                controller: marcaController,
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
                onPressed: () {
                  cadastrarProduto();
                },
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
