import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: MyApp5(),
));

class MyApp5 extends StatelessWidget {
  // Declarando os TextEditingController
  final TextEditingController _nomeController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _senhaController = TextEditingController();

  MyApp5({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange[900],
      ),
      resizeToAvoidBottomInset: false,
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              // currentAccountPicture: Image.network(
              //     'https://logosmarcas.net/wp-content/uploads/2020/04/Nike-Logo.png'),
              accountName: const Text(
                'Convidado',
                style: TextStyle(color: Colors.black),
              ),
              accountEmail: const Text(
                'Seja muito bem-vindo',
                style: TextStyle(color: Colors.black),
              ),
              decoration: const BoxDecoration(
                color: Colors.orange,
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    'Mais vendidos',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                Expanded(child: Container()),
                // Irá preeencher tod0 o espaço restante na linha (neste caso, utilizei um widget qualquer somente para posicionar meu icone na extrema direita)
                Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: Icon(Icons.favorite),
                ),
              ],
            ),
            const ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://d1xpm53719yy2u.cloudfront.net/Custom/Content/Products/14/51/145143_tenis-nike-revolution-6-ho21-dc3728003-pr-10362-dc3728003_l3_637934938066107692.jpg'),
              ),
              title:
              Text('Nike', style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text(
                'Produtos nike',
              ),
            ),
            const ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://assets.adidas.com/images/w_600,f_auto,q_auto/32c151dc88224a6f93b1af1200ec5a6a_9366/Tenis_Response_Runner_Preto_ID7336_01_standard.jpg'),
              ),
              title: Text(
                'Adidas',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text('Produtos adidas'),
            ),
            const ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://cdn.awsli.com.br/600x450/116/116175/produto/147929538/xray12-3xbk8z8pwu.jpg'),
              ),
              title: Text(
                'Puma',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text('Produtos puma'),
            ),
            const Divider(
              color: Colors.black54,
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    'Avalicações',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
              ],
            ),
            const ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://thumbs.dreamstime.com/b/retrato-de-um-homem-novo-com-barba-e-penteado-avatar-masculino-vetor-105082137.jpg'),
              ),
              title:
              Text('Danilo', style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text(
                'Produtos perfeitos! A melhor...',
              ),
            ),
            const ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://img.freepik.com/vetores-premium/jovem-mulher-avatar-personagem-vector-ilustracao-design_24877-18536.jpg'),
              ),
              title: Text(
                'Jéssica',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text('Muito obrigada, são lindos...'),
            ),
            const ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://thumbs.dreamstime.com/b/retrato-de-um-homem-novo-com-barba-e-penteado-avatar-masculino-vetor-105082137.jpg'),
              ),
              title: Text(
                'Maurício',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text('Produtos de alta qualidade! Top...'),
            ),
            const ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://img.freepik.com/vetores-premium/jovem-mulher-avatar-personagem-vector-ilustracao-design_24877-18536.jpg'),
              ),
              title: Text(
                'Carina',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text('Os melhores produtos são os seus...'),
            )
          ],
        ),
      ),
      body: Container(
        // A linha abaixo diz que o widget se auto ajustrá para ocupar tod0 o espaço disponível na horizontal
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(begin: Alignment.topRight, colors: [
              // Quando insiro '!' estou afirmando que aquele valor não é nulo
              Colors.orange[900]!,
              Colors.orange[700]!,
              Colors.orange[500]!
            ])),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(height: 30),
              const Padding(
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
              const SizedBox(
                height: 20,
              ),
              // Expaned é usado para preencher o restante do espaço disponível dentro do layout pai
              Expanded(
                  child: Container(
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(60),
                            topRight: Radius.circular(60))),
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(children: <Widget>[
                        const SizedBox(
                          height: 30,
                        ),
                        Container(
                          padding: const EdgeInsets.all(20),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              // ignore: prefer_const_literals_to_create_immutables
                              boxShadow: [
                                const BoxShadow(
                                    color: Color.fromRGBO(225, 95, 27, .3),
                                    blurRadius: 20,
                                    // Essa linha define o desfoque da sombra
                                    offset: Offset(0,
                                        10) // Define o deslocamento da sombra em relação ao widget
                                )
                              ]),
                          child: Column(
                            children: <Widget>[
                              Container(
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    border: Border(
                                        bottom:
                                        BorderSide(color: Colors.grey[200]!))),
                                child: TextField(
                                  controller: _nomeController,
                                  decoration: const InputDecoration(
                                      labelText: 'Nome',
                                      labelStyle: TextStyle(color: Colors.black),
                                      border: InputBorder.none),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    border: Border(
                                        bottom:
                                        BorderSide(color: Colors.grey[200]!))),
                                child: TextField(
                                  controller: _emailController,
                                  decoration: const InputDecoration(
                                      labelText: 'Email',
                                      labelStyle: TextStyle(color: Colors.black),
                                      border: InputBorder.none),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    border: Border(
                                        bottom:
                                        BorderSide(color: Colors.grey[200]!))),
                                child: TextField(
                                  controller: _senhaController,
                                  obscureText: true,
                                  decoration: const InputDecoration(
                                      labelText: 'Senha',
                                      labelStyle: TextStyle(color: Colors.black),
                                      border: InputBorder.none),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        const Text(
                          'Esqueceu sua senha?',
                          style: TextStyle(color: Colors.black),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        Container(
                          height: 50,
                          margin: const EdgeInsets.symmetric(horizontal: 20),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.orange[900]),
                          child: Center(
                            child: TextButton(
                              style: TextButton.styleFrom(
                                foregroundColor: Colors.white,
                                textStyle: const TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              onPressed: () {
                                _nomeController.clear();
                                _emailController.clear();
                                _senhaController.clear();
                              },
                              child: const Text('Submeter'),
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
