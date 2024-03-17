import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:melodyvibe/Common/page_transition.dart';
import 'package:melodyvibe/Constants/size.dart';
import 'package:cached_network_image/cached_network_image.dart';

class MusicListTile extends StatelessWidget {
   MusicListTile({super.key});

  final image = CachedNetworkImage(
        imageUrl: "https://source.unsplash.com/featured?technology",
        placeholder: (context, url) => const CircularProgressIndicator(),
        errorWidget: (context, url, error) => const Icon(Icons.error),
     );

  @override
  Widget build(BuildContext context) {
    return CupertinoContextMenu(
      actions: [
        const CupertinoContextMenuAction(
          trailingIcon: CupertinoIcons.share,
          child: Text('Share'),
        ),
        const CupertinoContextMenuAction(
          trailingIcon: CupertinoIcons.heart,
          child: Text('Like'),
        ),
        CupertinoContextMenuAction(
          trailingIcon: CupertinoIcons.delete,
          isDestructiveAction: true,
          onPressed: () {
            showCupertinoDialog(
              context: context,
              builder: (context) {
                return CupertinoAlertDialog(
                  title: const Text('Delete'),
                  content: const Text('Do you realy want to delete ?'),
                  actions: [
                    CupertinoDialogAction(
                      child: const Text('No'),
                      onPressed: () {
                        popPage(context);
                      },
                    ),
                    CupertinoDialogAction(
                      isDestructiveAction: true,
                      child: const Text('Yes'),
                      onPressed: () {
                        popPage(context);
                      },
                    )
                  ],
                );
              },
            );
          },
          child: const Text('Delete'),
        ),
      ],
      child: CupertinoListTile(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        leadingSize: 60,
        leading:image ,
        title: RichText(
          text: const TextSpan(
            text: 'This is title',
            style: TextStyle(
                color: CupertinoColors.black,
                fontWeight: FontWeight.w800,
                fontSize: AppSize.f18),
          ),
        ),
        trailing: CupertinoButton(
          child: const Icon(Icons.more_vert_rounded),
          onPressed: () {
            _popUpMenu(context);
          },
        ),
        subtitle: const Text(
          'This is subtitle',
          style: TextStyle(fontSize: AppSize.f10, fontWeight: AppSize.fw6),
        ),
      ),
    );
  }

// Pop Up Menu Items
  Future<dynamic> _popUpMenu(BuildContext context) {
    return showCupertinoModalPopup(
        context: context,
        builder: (BuildContext context) {
          return CupertinoActionSheet(actions: [
            CupertinoActionSheetAction(
                onPressed: () {},
                child: const Row(
                  children: [
                    Icon(Icons.playlist_play_rounded),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text('Play Next'),
                    ),
                  ],
                )),
            CupertinoActionSheetAction(
                onPressed: () {},
                child: const Row(
                  children: [
                    Icon(Icons.playlist_add),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text('Add to Queue'),
                    ),
                  ],
                )),
            CupertinoActionSheetAction(
                onPressed: () {},
                child: const Row(
                  children: [
                    Icon(Icons.playlist_add),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text('Add to Playlist'),
                    ),
                  ],
                )),
            CupertinoActionSheetAction(
                onPressed: () {},
                child: const Row(
                  children: [
                    Icon(Icons.album_rounded),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text('View Album'),
                    ),
                  ],
                )),
            CupertinoActionSheetAction(
                onPressed: () {},
                child: const Row(
                  children: [
                    Icon(Icons.person_rounded),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text('View Artist'),
                    ),
                  ],
                )),
            CupertinoActionSheetAction(
                onPressed: () {},
                child: const Row(
                  children: [
                    Icon(Icons.radio_rounded),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text('Play Radio'),
                    ),
                  ],
                )),
            CupertinoActionSheetAction(
                onPressed: () {},
                child: const Row(
                  children: [
                    Icon(Icons.share_rounded),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text('Share'),
                    ),
                  ],
                ))
          ]);
        });
  }
}
