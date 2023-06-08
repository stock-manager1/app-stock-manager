// ignore_for_file: unused_import, avoid_print
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/opcoes_pages.dart';
import 'package:flutter_application_1/pages/widgets_pages.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Consulta(),
  ));
}

class Consulta extends StatelessWidget {
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
      ),
      backgroundColor: Color(0xFF00141b),
      body: SingleChildScrollView(
        child: Container(
          color: Color(0xFF00141b), // Definindo a cor preta
          margin: EdgeInsets.all(20), // Defina as margens desejadas aqui
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              const SizedBox(
                height: 20,
              ),
              search(),
              SizedBox(height: 25),
              CustomCard(),
              SizedBox(height: 30),
              CustomCard2(
                information1: 'Custom Information 1',
                information2: 'Custom Information 2',
                information3: 'Custom Information 3',
                information4: 'Custom Information 4',
                information5: 'Custom Information 5',
                information6: 'Custom Information 6',
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomCard extends StatefulWidget {
  @override
  _CustomCardState createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isExpanded = !isExpanded;
        });
      },
      child: Dismissible(
        key: Key('card'),
        direction: DismissDirection.endToStart,
        confirmDismiss: (direction) async {
          return await showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: Text("Confirmar exclusão"),
              content: Text("Tem certeza de que deseja excluir este card?"),
              actions: [
                TextButton(
                  onPressed: () => Navigator.of(context).pop(false),
                  child: Text("Cancelar"),
                ),
                TextButton(
                  onPressed: () => Navigator.of(context).pop(true),
                  child: Text("Confirmar"),
                ),
              ],
            ),
          );
        },
        onDismissed: (direction) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text("Card excluído")),
          );
        },
        background: Container(
          color: Colors.red,
          child: Icon(
            Icons.delete,
            color: Colors.white,
            size: 30.0,
          ),
          alignment: Alignment.centerRight,
          padding: EdgeInsets.only(right: 20.0),
        ),
        child: AnimatedContainer(
          duration: Duration(milliseconds: 300),
          curve: Curves.fastOutSlowIn,
          height: isExpanded ? 280.0 : 180.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: Color(0xffFF914D),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Expanded(
                      child: Text(
                        'Cimento Royal',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        'RS 35,00',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.black,
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Expanded(
                      child: Text(
                        'Lorem Ipsum Lorem Ipsum Lorem Ipsum ',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        'Qtde: 8',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ),
                  ],
                ),
                if (isExpanded)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Expanded(
                        child: Text(
                          'Informação 5',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          'Informação 6',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ),
                    ],
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CustomCard2 extends StatefulWidget {
  final String information1;
  final String information2;
  final String information3;
  final String information4;
  final String information5;
  final String information6;

  const CustomCard2({
    Key? key,
    required this.information1,
    required this.information2,
    required this.information3,
    required this.information4,
    required this.information5,
    required this.information6,
  }) : super(key: key);

  @override
  _CustomCard2State createState() => _CustomCard2State();
}

class _CustomCard2State extends State<CustomCard2> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isExpanded = !isExpanded;
        });
      },
      child: Dismissible(
        key: Key('card'),
        direction: DismissDirection.endToStart,
        confirmDismiss: (direction) async {
          return await showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: Text("Confirmar exclusão"),
              content: Text("Tem certeza de que deseja excluir este card?"),
              actions: [
                TextButton(
                  onPressed: () => Navigator.of(context).pop(false),
                  child: Text("Cancelar"),
                ),
                TextButton(
                  onPressed: () => Navigator.of(context).pop(true),
                  child: Text("Confirmar"),
                ),
              ],
            ),
          );
        },
        onDismissed: (direction) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text("Card excluído")),
          );
        },
        background: Container(
          color: Colors.red,
          child: Icon(
            Icons.delete,
            color: Colors.white,
            size: 30.0,
          ),
          alignment: Alignment.centerRight,
          padding: EdgeInsets.only(right: 20.0),
        ),
        child: AnimatedContainer(
          duration: Duration(milliseconds: 300),
          curve: Curves.fastOutSlowIn,
          height: isExpanded ? 280.0 : 180.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: Color(0xffFF914D),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: Text(
                        widget.information1,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        widget.information2,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: Text(
                        widget.information3,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        widget.information4,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ),
                  ],
                ),
                if (isExpanded)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: Text(
                          widget.information5,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          widget.information6,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ),
                    ],
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}