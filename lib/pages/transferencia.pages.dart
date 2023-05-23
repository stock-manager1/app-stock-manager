import 'package:flutter/material.dart';

class TransferenciaPage extends StatelessWidget {
  const TransferenciaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF00141b),
        title: const Text("Transferência"),
        actions: const [Icon(Icons.favorite)],
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
          ],
        ),
      ),
    );
  }
}

Widget search() {
  return Container(
    height: 60,
    decoration: const BoxDecoration(
      color: Color(0xFF5271FF),
      borderRadius: BorderRadius.all(
        Radius.circular(128),
      ),
    ),
    child: Row(
      children: <Widget>[
        const Icon(Icons.search),
        const SizedBox(width: 10),
        Expanded(
          child: Container(
            padding: const EdgeInsets.only(left: 10),
            child: TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                hintText: "Nome do Produto",
                hintStyle: TextStyle(
                  color: Colors.black45,
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          width: 10,
          child: Image.asset(
            "assets/images/Vector.png",
            width: 40,
            height: 40,
          ),
        ),
      ],
    ),
  );
}
