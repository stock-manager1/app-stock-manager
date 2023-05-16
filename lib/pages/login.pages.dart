// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xFF00141b),
        padding: EdgeInsets.only(
          top: 90,
          left: 20,
          right: 20,
          bottom: 40,
        ),
        child: Column(
          children: <Widget>[
            Container(
              //color: Colors.black,
              height: 750,
              child: ListView(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const <Widget>[
                      Text(
                        "Login",
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 40,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 1, bottom: 60),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      TextFormField(
                        autofocus: true,
                        cursorColor: Colors.white,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          hintText: "Email",
                          fillColor: Colors.white,
                          hintStyle: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                          ),
                        ),
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Poppins',
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      TextFormField(
                        autofocus: true,
                        keyboardType: TextInputType.text,
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: "Senha",
                          fillColor: Colors.white,
                          hintStyle: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                          ),
                        ),
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Poppins',
                          color: Colors.white,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          TextButton(
                            onPressed: () {
                              // Adicione aqui a lógica de login
                            },
                            child: Text(
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                ),
                                'Problemas de Acesso?'),
                          ),
                          Padding(
                              padding: EdgeInsets.only(
                                  top: 20, left: 0, right: 20, bottom: 60)),
                        ],
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Padding(padding: EdgeInsets.all(20)),
                      Container(
                        height: 179,
                        width: 179,
                        child: Image.asset(
                          "assets/Stock_Manager_logo.png",
                        ),
                      ),
                      SizedBox(
                        height: 100,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Color(0xFF5271FF),
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                        ),
                        child: TextButton(
                          onPressed: () {},
                          child: Center(
                            child: Text(
                              'Entrar',
                              style: TextStyle(
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
            )
          ],
        ),
      ),
    );
  }
}
