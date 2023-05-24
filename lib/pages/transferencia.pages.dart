import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/widgets.pages.dart';

class TransferenciaPage extends StatelessWidget {
  const TransferenciaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF00141b),
        title: const Text("Transferência"),
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
            Container(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(bottom: 20),
                    ),
                    SizedBox(
                      height: 150,
                      child: Card(
                        color: const Color(0xffFF914D),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Text("CIMENTO"),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(bottom: 20),
                    ),
                    SizedBox(
                      height: 150,
                      child: Card(
                        color: const Color(0xffFF914D),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Text("Tinta"),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(bottom: 20),
                    ),
                    SizedBox(
                      height: 150,
                      child: Card(
                        color: const Color(0xffFF914D),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Text("Torques"),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
