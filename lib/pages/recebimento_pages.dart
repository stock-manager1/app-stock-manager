import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/widgets_pages.dart';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/widgets_pages.dart';

class RecebimentoPage extends StatelessWidget {
  const RecebimentoPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF00141b),
        title: const Text('Recebimentos'),
        actions: <Widget>[
          SizedBox(
            width: 70,
            height: 70,
            child: IconButton(
              icon: Image.asset('assets/images/Stock_Manager_logo.png'),
              onPressed: () {},
            ),
          ),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(15),
        color: const Color(0xFF00141b),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const SizedBox(
              height: 60,
            ),
            search(),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(height: 20),
                    CustomCard(
                      numeroPedido: '123456',
                      fornecedor: 'Tigre Materiais',
                    ),
                    const SizedBox(height: 20),
                    ProductCard(
                      productName: 'JOELHO SOLD 20MM ',
                      codigo: '001',
                      quantidade: '10',
                    ),
                    ProductCard(
                      productName: 'TUBO 100MM ESG',
                      codigo: '002',
                      quantidade: '100',
                    ),
                    ProductCard(
                      productName: 'COLA 17G ',
                      codigo: '003',
                      quantidade: '36',
                    ),
                    ProductCard(
                      productName: 'TUBO 20MM SOLD ',
                      codigo: '004',
                      quantidade: '60',
                    ),
                    ProductCard(
                      productName: 'ANEL DE VEDAÇÃO ',
                      codigo: '005',
                      quantidade: '10',
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CustomCard extends StatelessWidget {
  final String numeroPedido;
  final String fornecedor;

  const CustomCard({
    required this.numeroPedido,
    required this.fornecedor,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xffFF914D),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Número do Pedido',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    numeroPedido,
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  '|',
                  style: TextStyle(color: Colors.black, fontSize: 50),
                ),
              ],
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Fornecedor',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    fornecedor,
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProductCard extends StatefulWidget {
  final String productName;
  final String codigo;
  final String quantidade;

  const ProductCard({
    required this.productName,
    required this.codigo,
    required this.quantidade,
  });

  @override
  _ProductCardState createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xffFF914D),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'Nome Produto: ${widget.productName}',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Text(
                        'Código: ${widget.codigo}',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Text(
                        'Quantidade: ${widget.quantidade}',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Column(
              children: [
                SizedBox(width: 16.0),
                IconButton(
                  onPressed: () {
                    setState(() {
                      isChecked = !isChecked;
                    });
                  },
                  icon: isChecked
                      ? Icon(
                          Icons.check_circle,
                          color: Colors.green,
                        )
                      : Icon(
                          Icons.check_box_outline_blank_sharp,
                          color: Colors.red,
                        ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
