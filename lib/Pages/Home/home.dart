import 'package:flutter/cupertino.dart';
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
        middle: Text('Melody Vibe'),
      ),
      child:SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: CupertinoSearchTextField(
                onTap: () {
                }),
            )
            ,
            Expanded(
              child: ListView(children: const [
                MusicListTile(),
                MusicListTile(),
                MusicListTile(),
                ],),
            ),
          ],
        ),
      )
    );
  }
}
