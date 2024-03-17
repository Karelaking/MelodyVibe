import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:melodyvibe/Common/page_transition.dart';
import 'package:melodyvibe/Constants/size.dart';

class ThemeSettings extends StatefulWidget {
  const ThemeSettings({super.key});

  @override
  State<ThemeSettings> createState() => _ThemeSettingsState();
}

class _ThemeSettingsState extends State<ThemeSettings> {
 bool isDarkMode = false;
 bool isSystemTheme = true;
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        padding: const EdgeInsetsDirectional.all(0),
        middle: RichText(
          text: const TextSpan(
              text: 'Theme',
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
      ),
      child: SafeArea(
          child: Column(
        children: [
          CupertinoListTile(
            title: RichText(
              text: const TextSpan(
                text: 'Dark Mode',
                style: TextStyle(
                    fontSize: AppSize.f20,
                    fontWeight: AppSize.fw9,
                    color: CupertinoColors.black),
              ),
            ),
            trailing: CupertinoSwitch(value: isDarkMode, onChanged: (newValue) {
              setState(() {
                isDarkMode = newValue;
              });
            }),
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 15),
          ),
          const Divider(
            height: 0,
          ),
        CupertinoListTile(
            title: RichText(
              text: const TextSpan(
                text: 'Use System Theme',
                style: TextStyle(
                    fontSize: AppSize.f20,
                    fontWeight: AppSize.fw9,
                    color: CupertinoColors.black),
              ),
            ),
            trailing: CupertinoSwitch(value: isSystemTheme,onChanged: (newValue) {
              setState(() {
                isSystemTheme = newValue;
              });
            }),
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 15),
          ),
          const Divider(
            height: 0,
            thickness: 0.4,
          ),
          CupertinoListTile(title: RichText(
              text: const TextSpan(
                text: 'Save Theme',
                style: TextStyle(
                    fontSize: AppSize.f20,
                    fontWeight: AppSize.fw9,
                    color: CupertinoColors.black),
              ),
            ), onTap: () {
              
            },
            padding: const EdgeInsets.all(15),)
        ],
      ),),
    );
  }
}
