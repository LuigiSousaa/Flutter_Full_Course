import 'package:flutter/material.dart';
import 'package:sa2_correcao/screen/login_page.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'SA2',
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
