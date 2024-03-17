import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:melodyvibe/Common/page_transition.dart';
import 'package:melodyvibe/Constants/size.dart';
import 'package:melodyvibe/Widgets/MusicListTile/music_list_tile.dart';

class PlayList extends StatelessWidget {
  const PlayList({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
            navigationBar: CupertinoNavigationBar(
        padding: const EdgeInsetsDirectional.all(0),
        middle: RichText(
          text: const TextSpan(
              text: 'Create PlayList',
              style: TextStyle(
                  color: CupertinoColors.black,
                  fontSize: AppSize.f20,
                  fontWeight: AppSize.fw7)),
        ),
        leading: CupertinoButton(
            child: const Icon(CupertinoIcons.arrow_left),
            onPressed: () {
              popPage(context);
            }),
      ), child:SafeArea(child: SingleChildScrollView(
        child: Column(
          children: [
            Card(
              margin: const EdgeInsets.symmetric(vertical: 5,horizontal: 10),
              child: Column(
                children: [
                   CupertinoListTile(title: RichText(
                      text: const TextSpan(
                        text: 'Create Playlist',
                        style: TextStyle(
                            fontSize: AppSize.f20,
                            fontWeight: AppSize.fw9,
                            color: CupertinoColors.black),
                      ),
                    ),
                    leading: const Icon(CupertinoIcons.add),
                     onTap: () {
                      
                    },
                    padding: const EdgeInsets.all(15),),
                    const Divider(height: 0,thickness: 1,),
                     CupertinoListTile(title: RichText(
                      text: const TextSpan(
                        text: 'Import Playlist',
                        style: TextStyle(
                            fontSize: AppSize.f20,
                            fontWeight: AppSize.fw9,
                            color: CupertinoColors.black),
                      ),
                    ),
                    leading: const Icon(Icons.import_export_rounded),
                     onTap: () {
                      
                    },
                    padding: const EdgeInsets.all(15),),
                    const Divider(height: 0,thickness: 1,),
                     CupertinoListTile(title: RichText(
                text: const TextSpan(
                  text: 'Merage Playlist',
                  style: TextStyle(
                      fontSize: AppSize.f20,
                      fontWeight: AppSize.fw9,
                      color: CupertinoColors.black),
                ),
              ),
              leading: const Icon(CupertinoIcons.collections),
               onTap: () {
                
              },
              padding: const EdgeInsets.all(15),)
                ],
              ),
            ),
            MusicListTile(),
            MusicListTile(),
            MusicListTile(),
            MusicListTile(),
            MusicListTile(),
            MusicListTile(),
            MusicListTile(),
            MusicListTile(),
            MusicListTile(),
            MusicListTile(),
          ],
        ),
      )),
    );
  }
}