// ignore_for_file: library_private_types_in_public_api
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;

import 'package:flutter_application_1/dto/login_request.dart';
import 'package:flutter_application_1/pages/opcoes_pages.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  final String? _host = dotenv.env['HOSTNAME'];

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _login() {
    if (_formKey.currentState!.validate()) {
      Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => OpcaoPage()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
              Container(
                height: 780,
                child: Form(
                  key: _formKey,
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
                      const SizedBox(
                        height: 100,
                      ),
                      Column(
                        children: [
                          TextFormField(
                            controller: _emailController,
                            autofocus: true,
                            keyboardType: TextInputType.emailAddress,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Por favor, digite um e-mail válido';
                              }
                              return null;
                            },
                            decoration: const InputDecoration(
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
                            style: const TextStyle(
                              fontSize: 20,
                              fontFamily: 'Poppins',
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          TextFormField(
                            controller: _passwordController,
                            autofocus: true,
                            keyboardType: TextInputType.text,
                            obscureText: true,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Você precisa digitar uma senha válida';
                              }
                              return null;
                            },
                            decoration: const InputDecoration(
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
                            style: const TextStyle(
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
                                  // Lógica para lidar com problemas de acesso
                                },
                                child: const Text(
                                  'Problemas de Acesso?',
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(
                                  top: 20,
                                  left: 0,
                                  right: 20,
                                  bottom: 60,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 50,
                          ),
                          SizedBox(
                            height: 179,
                            width: 179,
                            child: Image.asset(
                              "assets/images/Stock_Manager_logo.png",
                            ),
                          ),
                          const Padding(padding: EdgeInsets.all(10)),
                          Container(
                            decoration: const BoxDecoration(
                              color: Color(0xFF5271FF),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                            ),
                            child: TextButton(
                              onPressed: () {
                                if (_formKey.currentState!.validate()) {
                                  //_logar();
                                  _logar();
                                  _login();
                                }
                              },
                              child: const Center(
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
              ),
            ],
          ),
        ),
      ),
    );
  }

  /* _logar() async {
    var url = Uri.parse('$_host/user/login');
    var response = await http.post(url, body: {
      'username': _emailController.text,
      'password': _passwordController.text,
    });

    print(response.statusCode);
    print(response.body);
    print('logado com sucesso');
  }*/

  void _logar() async {
    var url = Uri.parse('$_host/user/login');

    String email = _emailController.text;
    String password = _passwordController.text;

    LoginRequest loginRequest = LoginRequest(email: email, password: password);
    print(loginRequest.toJson());

    http
        .post(
      url,
      body: loginRequest.toJson(),
    )
        .then((value) {
      print(value.statusCode);
      print(value.body);
    });

    /*if (response.statusCode == 200) {
      print(response.statusCode);
      print(response.body);
    } else {
      print(response.statusCode);
    }*/
  }
}
