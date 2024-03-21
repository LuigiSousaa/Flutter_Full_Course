import 'package:exemplo_mediaquery/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text("Exercicio 1")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 50,
                alignment: Alignment.center,
                color: Colors.blue,
                child: Text("Container 1"),
              ),
              Container(
                height: 50,
                alignment: Alignment.center,
                color: Colors.yellow,
                child: Text("Container 2"),
              ),
              Container(
                height: 50,
                alignment: Alignment.center,
                color: Colors.red,
                child: Text("Container 3"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
