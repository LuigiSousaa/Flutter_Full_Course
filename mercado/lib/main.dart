import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:mercado/TarefasController.dart';
import 'package:mercado/TarefasView.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ChangeNotifierProvider(
        create: (context) => TarefasController(),
        child: TarefasScreen(),
      ),
    );
  }
}