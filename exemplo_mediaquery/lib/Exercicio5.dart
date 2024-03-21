// ignore_for_file: prefer_const_constructors
// ignore: unnecessary_import
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:flutter/services.dart';
=======
>>>>>>> a5dc7d7cf319dedbfb1b9ec923b6e227e4a7d6b8
import 'package:flutter/widgets.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp5(),
    ));

class MyApp5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    return Scaffold(
      resizeToAvoidBottomInset: false,
=======
    return Scaffold(
>>>>>>> a5dc7d7cf319dedbfb1b9ec923b6e227e4a7d6b8
      body: Container(
        // A linha abaixo diz que o widget se auto ajustrá para ocupar todo o espaço disponível na horizontal
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(begin: Alignment.topCenter, colors: [
          // Quando insiro '!' estou afirmando que aquele valor não é nulo
          Colors.orange[900]!,
          Colors.orange[600]!,
          Colors.orange[400]!
        ])),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 80),
              Padding(
                padding: EdgeInsets.all(20),
                //Na linha abaixo estou dizendo que empilharei os widgets
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: <Widget>[
                    Text(
                      "Cadastro",
                      style: TextStyle(color: Colors.white, fontSize: 40),
                    ),
                    // Usado para criar um espaço vertical de 10 px entre os widgets
                    SizedBox(height: 10),
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Text(
                        "Seja bem-vindo!",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              // Expaned é usado para preencher o restante do espaço disponível dentro do layout pai
              Expanded(
                  child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(60),
                        topRight: Radius.circular(60))),
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(children: <Widget>[
                    SizedBox(
                      height: 60,
                    ),
                    Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          // ignore: prefer_const_literals_to_create_immutables
                          boxShadow: [
                            BoxShadow(
                                color: Color.fromRGBO(225, 95, 27, .3),
                                blurRadius:
                                    20, // Essa linha define o desfoque da sombra
                                offset: Offset(0,
                                    10) // Define o deslocamento da sombra em relação ao widget
                                )
                          ]),
                      child: Column(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                border: Border(
                                    bottom:
                                        BorderSide(color: Colors.grey[200]!))),
                            child: TextField(
                              decoration: InputDecoration(
                                  labelText: 'Nome',
                                  labelStyle: TextStyle(color: Colors.black),
                                  border: InputBorder.none),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                border: Border(
                                    bottom:
                                        BorderSide(color: Colors.grey[200]!))),
                            child: TextField(
                              decoration: InputDecoration(
                                  labelText: 'Email',
                                  labelStyle: TextStyle(color: Colors.black),
                                  border: InputBorder.none),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                border: Border(
                                    bottom:
                                        BorderSide(color: Colors.grey[200]!))),
                            child: TextField(
                              decoration: InputDecoration(
                                  labelText: 'Senha',
                                  labelStyle: TextStyle(color: Colors.black),
                                  border: InputBorder.none),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Text(
                      'Esqueceu sua senha?',
                      style: TextStyle(color: Colors.black),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Container(
<<<<<<< HEAD
=======
                      height: 50,
                      margin: EdgeInsets.symmetric(horizontal: BorderSide.strokeAlignCenter),
>>>>>>> a5dc7d7cf319dedbfb1b9ec923b6e227e4a7d6b8
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.orange[900]),
                      child: Center(
                        child: Text(
                          "Submter",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    )
                  ]),
                ),
              ))
            ]),
      ),
    );
  }
}
