import 'package:Sub1Resto/data_restaurant.dart';
import 'package:Sub1Resto/detailResto.dart';
import 'package:flutter/material.dart';
import 'pilihanResto.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.amber),
      initialRoute: MainScreen.nameR,
      routes: {
        MainScreen.nameR: (context) => const MainScreen(),
        HalamanDResto.nameR1: (context) => HalamanDResto(
              datar: ModalRoute.of(context)?.settings.arguments as Restaurant,
            ),
      },
    );
  }
}
