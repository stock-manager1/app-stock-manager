import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/opcoes_pages.dart';
import 'package:flutter_application_1/pages/widgets_pages.dart';

class TransferenciaPage extends StatefulWidget {
  const TransferenciaPage({Key? key}) : super(key: key);

  @override
  State<TransferenciaPage> createState() => _TransferenciaPageState();
}

class _TransferenciaPageState extends State<TransferenciaPage> {
  int counter = 0;
  int counter2 = 0;
  bool get isEmpty => counter == 0;
  bool get isFull => counter == 100;

  void incrementCounter() {
    setState(() {
      counter++;
    });
    print(counter);
  }

  void decrementCounter() {
    setState(() {
      counter--;
    });
    print(counter);
  }

  void incrementCounter2() {
    setState(() {
      counter2++;
    });
    print(counter);
  }

  void decrementCounter2() {
    setState(() {
      counter2--;
    });
    print(counter);
  }

  Widget buildStockCard(String title, String stock) {
    return SizedBox(
      height: 150,
      child: Card(
        color: const Color(0xffFF914D),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Column(
          children: [
            Padding(padding: EdgeInsets.only(left: 20)),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 10, right: 80),
                    child: Text(
                      title,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: Text(
                      'Estoque:  $stock',
                      textAlign: TextAlign.end,
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 10, right: 38),
                  child: Text(
                    'Qtde Loja: ',
                    textAlign: TextAlign.end,
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
                ),
                CounterButton(
                  icon: Icons.remove,
                  onPressed: isEmpty ? null : decrementCounter,
                ),
                SizedBox(
                  width: 35,
                  height: 40,
                  child: Card(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: SizedBox(
                      child: Padding(
                        padding: EdgeInsets.only(left: 1),
                        child: Text(
                          '$counter',
                          style: const TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                CounterButton(
                  icon: Icons.add,
                  onPressed: isFull ? null : incrementCounter,
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 20),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    'Qtde Deposito: ',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
                ),
                CounterButton(
                  icon: Icons.remove,
                  onPressed: isEmpty ? null : decrementCounter2,
                ),
                SizedBox(
                  width: 35,
                  height: 40,
                  child: Card(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: SizedBox(
                      child: Padding(
                        padding: EdgeInsets.only(left: 1),
                        child: Text(
                          '$counter2',
                          style: const TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                CounterButton(
                  icon: Icons.add,
                  onPressed: isFull ? null : incrementCounter2,
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 20, left: 5),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SizedBox(
                      child: Card(
                        color: const Color(0xFF5271FF),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: TextButton(
                          onPressed: () {
                            OpcaoPage();
                          },
                          child: Text(
                            'ATUALIZAR',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF00141b),
        title: const Text('Transferência'),
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
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(bottom: 20),
                  ),
                  buildStockCard('CIMENTO 50 KG ', '10'),
                  buildStockCard('ESCADA ALUMINIO', '5'),
                  buildStockCard('TELHA BRASILIT', '20'),
                  Padding(
                    padding: EdgeInsets.all(50),
                    child: SizedBox(
                      height: 70,
                      width: 70,
                      child: Image.asset(
                        'assets/images/Stock_Manager_logo.png',
                      ),
                    ),
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

class CounterButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onPressed;

  const CounterButton({
    Key? key,
    required this.icon,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(icon),
      onPressed: onPressed,
    );
  }
}
