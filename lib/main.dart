import 'package:flutter/material.dart';
import 'package:game_store/home/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Game Store',
      theme: ThemeData(),
      home: const HomePage(),
    );
  }
}
