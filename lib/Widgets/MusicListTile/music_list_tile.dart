import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:melodyvibe/Common/page_transition.dart';
import 'package:melodyvibe/Constants/size.dart';

class MusicListTile extends StatelessWidget {
  const MusicListTile({super.key});

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
          isDefaultAction: true,
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
                      onPressed: (){popPage(context);},
                    ),
                   CupertinoDialogAction(isDestructiveAction: true,child: const Text('Yes'),onPressed: (){popPage(context);},)
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
            showCupertinoModalPopup(
                context: context,
                builder: (BuildContext builder) {
                  return CupertinoPopupSurface(
                    child: Container(
                      color: CupertinoColors.white,
                      alignment: Alignment.center,
                      width: AppSize().width100(context),
                      height: AppSize().height50(context),
                    ),
                  );
                });
          },
        ),
        subtitle: const Text(
          'This is subtitle',
          style: TextStyle(fontSize: AppSize.f10, fontWeight: AppSize.fw6),
        ),
      ),
    );
  }
}
