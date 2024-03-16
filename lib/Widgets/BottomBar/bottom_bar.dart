import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:melodyvibe/Pages/Home/home.dart';
import 'package:melodyvibe/Pages/Library/library.dart';
import 'package:melodyvibe/Pages/Search/search.dart';
import 'package:melodyvibe/Pages/Settings/settings.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_rounded),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search_rounded),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_music_rounded),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings_rounded),
          ),
        ],
      ),
      tabBuilder: (context, index) {
        switch (index) {
          case 0:
            return const Home();
          case 1:
            return const Search();
          case 2:
            return const Library();
          case 3:
            return const Settings();
          default:
            return const Home();
        }
      },
    );
  }
}
