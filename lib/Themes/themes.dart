import 'package:flutter/material.dart';

class Themes{
 static ThemeData lightTheme(){
 return ThemeData(primaryColor:Colors.teal.shade900,brightness: Brightness.light);}

  static ThemeData darkTheme(){
 return ThemeData(primaryColor:Colors.teal.shade300,brightness: Brightness.dark);}
}