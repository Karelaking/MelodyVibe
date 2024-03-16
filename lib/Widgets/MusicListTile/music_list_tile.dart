import 'package:flutter/cupertino.dart';
import 'package:melodyvibe/Constants/size.dart';

class MusicListTile extends StatelessWidget {
  const MusicListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoContextMenu(
      actions: const [
        CupertinoContextMenuAction(
          trailingIcon: CupertinoIcons.delete,
          child: Text('Delete'),
        ),
        CupertinoContextMenuAction(
          trailingIcon: CupertinoIcons.share,
          child: Text('Share'),
        ),
        CupertinoContextMenuAction(
          trailingIcon: CupertinoIcons.heart,
          child: Text('Like'),
        ),
      ],
      child: CupertinoListTile(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
        title: RichText(
          text: const TextSpan(
            text: 'This is title',
            style: TextStyle(
                color: CupertinoColors.black,
                fontWeight: FontWeight.w800,
                fontSize: AppSize.f18),
          ),
        ),
        subtitle: const Text('This is subtitle'),
      ),
    );
  }
}
