import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Themes{
 static CupertinoThemeData iosTheme(){
 return const CupertinoThemeData(primaryColor:Colors.teal,
 textTheme: CupertinoTextThemeData(primaryColor: CupertinoColors.black,
 textStyle: TextStyle(
  color: CupertinoColors.black
 )
 )
 );
}
}