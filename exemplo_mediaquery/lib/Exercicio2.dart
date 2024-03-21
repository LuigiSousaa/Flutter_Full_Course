import 'package:exemplo_mediaquery/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

void main(List<String> args) {
  runApp(MyApp2());
}

class MyApp2 extends StatelessWidget {
  Widget build(BuildContext contex) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Exercício"),
        ),
        body: const Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: [
                Text("Nome"),
                Text("Luigi"),
              ],
            ), 
            Column(
              children: [
                Text("Idade"),
                Text("16 anos"),
              ],
            ),
            Column(
              children: [Text("Data de nascimento"), Text("12/03/2007")],
            )
          ],
        ),
      ),
    );
  }
}
