import 'package:flutter/cupertino.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';
import 'package:melodyvibe/Constants/size.dart';

class LibraryListItem extends StatelessWidget {
  const LibraryListItem(
      {super.key, required this.text, required this.leadingIcon, this.onTap});
  final String text;
  final Icon leadingIcon;
  final Callback? onTap;
  @override
  Widget build(BuildContext context) {
    return CupertinoListTile(
      title: RichText(
        text: TextSpan(
          text: text,
          style: const TextStyle(
              fontSize: AppSize.f20,
              fontWeight: AppSize.fw7,
              color: CupertinoColors.black),
        ),
      ),
      leading: leadingIcon,
      onTap: onTap,
      padding: const EdgeInsets.symmetric(vertical: 13, horizontal: 15),
    );
  }
}
