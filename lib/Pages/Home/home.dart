import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:melodyvibe/Widgets/MusicListTile/music_list_tile.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('MelodyVibe'),
      ),
      child:ListView(children: const [
        MusicListTile(),
        Divider(),
        MusicListTile(),
        Divider(),
        MusicListTile(),
        ],)
    );
  }
}
