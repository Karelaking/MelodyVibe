import 'package:flutter/cupertino.dart';
import 'package:melodyvibe/Widgets/LibraryListItems/library_list_item.dart';

class Library extends StatelessWidget {
  const Library({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(middle: Text('Library')),
        child: SafeArea(
          child: Column(
            children: [
              LibraryListItem(
                text: 'Now Playing',
                leadingIcon: Icon(CupertinoIcons.play),
              ),
                            LibraryListItem(
                text: 'Last Session',
                leadingIcon: Icon(CupertinoIcons.clock),
              ),
                            LibraryListItem(
                text: 'Favorites',
                leadingIcon: Icon(CupertinoIcons.heart),
              ),
                            LibraryListItem(
                text: 'My Music',
                leadingIcon: Icon(CupertinoIcons.music_house),
              ),
                            LibraryListItem(
                text: 'Download',
                leadingIcon: Icon(CupertinoIcons.cloud_download),
              ),
                            LibraryListItem(
                text: 'Playlists',
                leadingIcon: Icon(CupertinoIcons.music_note),
              ),
              
            ],
          ),
        ));
  }
}
