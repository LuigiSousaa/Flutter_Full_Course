import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
// Obtém informações sobre o ambiente de exibição
    MediaQueryData mediaQueryData = MediaQuery.of(context);

    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);

// Determina a largura da tela
    double screenWidth = mediaQueryData.size.width;

// Calcula o tamanho do texto com base na largura da tela
    double textSize = screenWidth * 0.05;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Demo MediaQuery'),
        ),
        body: Center(
          child: Container(
            width: screenWidth * 0.8,
            padding: EdgeInsets.all(16.0),
            color: Colors.lightBlue,
            child: Text(
              'Texto Responsivo',
              style: TextStyle(fontSize: textSize),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
