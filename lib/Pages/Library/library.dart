import 'package:flutter/cupertino.dart';

class Library extends StatelessWidget {
  const Library({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoPageScaffold(navigationBar: CupertinoNavigationBar(middle: Text('Library')),child: Center(child: Text('Library'),),);
  }
}