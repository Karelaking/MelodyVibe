import 'package:flutter/material.dart';
import 'package:musick2k/Pages/Home/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Music K2k',
      home: Home(),
    );
  }
}
