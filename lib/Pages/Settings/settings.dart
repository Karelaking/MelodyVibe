import 'package:flutter/cupertino.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(middle: Text('Settings')),
      child:SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
          ],
        ),
      ),);
  }
}