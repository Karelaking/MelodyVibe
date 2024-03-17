import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:melodyvibe/Widgets/BottomBar/bottom_bar.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const GetCupertinoApp(
      
      title: 'MelodyVibe',
      home: BottomBar(),
    );
  }
}
