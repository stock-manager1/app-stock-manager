// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: const Color(0xFF00141b),
          padding: const EdgeInsets.only(
            top: 90,
            left: 20,
            right: 20,
            bottom: 40,
          ),
          child: Column(
            children: <Widget>[
              // ignore: sized_box_for_whitespace
              Container(
                height: 780,
                child: Column(
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
                      ],
                    ),
                    SizedBox(
                      height: 100,
                    ),
                    Column(
                      children: [
                        TextFormField(
                          autofocus: true,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            hintText: "Email",
                            hintStyle: TextStyle(
                              color: Colors.black45,
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                            ),
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(25)),
                              borderSide: BorderSide.none,
                            ),
                          ),
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'Poppins',
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        TextFormField(
                          autofocus: true,
                          keyboardType: TextInputType.text,
                          obscureText: true,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            hintText: "Senha",
                            hintStyle: TextStyle(
                              color: Colors.black45,
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                            ),
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(25)),
                              borderSide: BorderSide.none,
                            ),
                          ),
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'Poppins',
                            color: Colors.black,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            TextButton(
                              onPressed: () {
                                //  Adicione aqui a lógica de login
                              },
                              child: Text(
                                'Problemas de Acesso?',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                top: 20,
                                left: 0,
                                right: 20,
                                bottom: 60,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Padding(padding: EdgeInsets.all(20)),
                        SizedBox(
                          height: 179,
                          width: 179,
                          child: Image.asset(
                            "assets/Stock_Manager_logo.png",
                          ),
                        ),
                        Padding(padding: EdgeInsets.all(20)),
                        Container(
                          decoration: BoxDecoration(
                            color: const Color(0xFF5271FF),
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
