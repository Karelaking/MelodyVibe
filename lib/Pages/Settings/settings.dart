import 'package:flutter/cupertino.dart';
import 'package:melodyvibe/Common/page_transition.dart';
import 'package:melodyvibe/Pages/Settings/theme_settings.dart';
import 'package:melodyvibe/Widgets/SettingsListTile/settings_list_tile.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
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
                leadingIcon: const Icon(CupertinoIcons.sun_max),
                onTap: (){pushPageTo(context, const ThemeSettings());},
              ),
              const SettingsListTile(
                text: 'App UI',
                subTitle: 'Player Screen Background, Buttons to show in Mini Player, Use Dense Miniplayer',
                leadingIcon: Icon(CupertinoIcons.app),
              ),
              const SettingsListTile(
                text: 'Music & Playback',
                subTitle: 'Music Language, Streaming Quality, Spotify Local Charts Location',
                leadingIcon: Icon(CupertinoIcons.music_note),
              ),
              const SettingsListTile(
                text: 'Download',
                subTitle: 'Download Quality, Download Location, Download Name Format',
                leadingIcon: Icon(CupertinoIcons.cloud_download),
              ),
              const SettingsListTile(
                text: 'Others',
                subTitle: 'Language, Include/Exclude Folders, Min Audio Lenght to Search Music',
                leadingIcon: Icon(CupertinoIcons.settings),
              ),
              const SettingsListTile(
                text: 'Backup & Resote',
                subTitle: 'Create Backup, Restore, Audio Backup',
                leadingIcon: Icon(CupertinoIcons.arrow_counterclockwise),
              ),
             const SettingsListTile(
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
