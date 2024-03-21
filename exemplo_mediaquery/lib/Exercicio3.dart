import 'package:exemplo_mediaquery/Exercicio2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main(List<String> args) {
  runApp(MyApp3());
}

class MyApp3 extends StatelessWidget {
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text("Exercício 3")),
        body: Center(
            child: Container(
          alignment: Alignment.center,
          child: ListView(
            children: [
              ListTile(title: Text("Item 1")),
              ListTile(title: Text("Item 2")),
              ListTile(title: Text("Item 3")),
              ListTile(title: Text("Item 4")),
              ListTile(title: Text("Item 5")),
              ListTile(title: Text("Item 6")),
              ListTile(title: Text("Item 7")),
              ListTile(title: Text("Item 8")),
              ListTile(title: Text("Item 9")),
              ListTile(title: Text("Item 10")),
            ],
          ),
        )),
      ),
    );
  }
}
