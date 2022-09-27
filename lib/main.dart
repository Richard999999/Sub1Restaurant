import 'package:flutter/material.dart';
import 'package:submission1/depanLayar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rental Mobil Jakarta',
      theme: ThemeData(primarySwatch: Colors.purple),
      home: const MainScreen(),
    );
  }
}
