import 'package:flutter/cupertino.dart';
import 'package:melodyvibe/Common/page_transition.dart';
import 'package:melodyvibe/Pages/Library/playlist.dart';
import 'package:melodyvibe/Widgets/LibraryListItems/library_list_item.dart';

class Library extends StatelessWidget {
  const Library({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: const CupertinoNavigationBar(middle: Text('Library')),
        child: SafeArea(
          child: Column(
            children: [
              const LibraryListItem(
                text: 'Now Playing',
                leadingIcon: Icon(CupertinoIcons.play),
              ),
                            const LibraryListItem(
                text: 'Last Session',
                leadingIcon: Icon(CupertinoIcons.clock),
              ),
                            const LibraryListItem(
                text: 'Favorites',
                leadingIcon: Icon(CupertinoIcons.heart),
              ),
                            const LibraryListItem(
                text: 'My Music',
                leadingIcon: Icon(CupertinoIcons.music_house),
              ),
                            const LibraryListItem(
                text: 'Download',
                leadingIcon: Icon(CupertinoIcons.cloud_download),
              ),
                            LibraryListItem(
                text: 'Playlists',
                leadingIcon: const Icon(CupertinoIcons.music_note),
                onTap: (){pushPageTo(context, const PlayList());},
              ),
              
            ],
          ),
        ));
  }
}
