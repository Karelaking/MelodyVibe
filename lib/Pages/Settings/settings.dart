import 'package:flutter/cupertino.dart';
import 'package:melodyvibe/Widgets/SettingsListTile/settings_list_tile.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Settings'),
      ),
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SettingsListTile(
                text: 'Theme',
                subTitle: 'Dark Mode, Accent Color & Hue, Use System Theme',
                leadingIcon: Icon(CupertinoIcons.sun_max),
              ),
              SettingsListTile(
                text: 'App UI',
                subTitle: 'Player Screen Background, Buttons to show in Mini Player, Use Dense Miniplayer',
                leadingIcon: Icon(CupertinoIcons.app),
              ),
              SettingsListTile(
                text: 'Music & Playback',
                subTitle: 'Music Language, Streaming Quality, Spotify Local Charts Location',
                leadingIcon: Icon(CupertinoIcons.music_note),
              ),
              SettingsListTile(
                text: 'Download',
                subTitle: 'Download Quality, Download Location, Download Name Format',
                leadingIcon: Icon(CupertinoIcons.cloud_download),
              ),
              SettingsListTile(
                text: 'Others',
                subTitle: 'Language, Include/Exclude Folders, Min Audio Lenght to Search Music',
                leadingIcon: Icon(CupertinoIcons.settings),
              ),
              SettingsListTile(
                text: 'Backup & Resote',
                subTitle: 'Create Backup, Restore, Audio Backup',
                leadingIcon: Icon(CupertinoIcons.arrow_counterclockwise),
              ),
              SettingsListTile(
                text: 'About',
                subTitle: 'Version, Share App, Contact Us',
                leadingIcon: Icon(CupertinoIcons.info_circle),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
