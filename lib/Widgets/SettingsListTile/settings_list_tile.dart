import 'package:flutter/cupertino.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';
import 'package:melodyvibe/Constants/size.dart';

class SettingsListTile extends StatelessWidget {
  const SettingsListTile({super.key, required this.text, required this.subTitle, required this.leadingIcon,  this.onTap});
  final String text;
  final String subTitle;
  final Icon leadingIcon;
  final Callback? onTap;
  @override
  Widget build(BuildContext context) {
    return CupertinoListTile(title: RichText(text: TextSpan(text: text,style: const TextStyle(fontSize: AppSize.f20,fontWeight: AppSize.fw9,color: CupertinoColors.black),),),subtitle: Text(subTitle,style: const TextStyle(fontSize: AppSize.f15,fontWeight: AppSize.fw5),maxLines: 2,),leading: leadingIcon,onTap: onTap,padding: const EdgeInsets.symmetric(vertical: 12,horizontal: 15),);
  }
}