// Flutter imports
import 'package:flutter/material.dart';

// Package imports
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class Footer extends StatelessWidget {
  const Footer();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
        border: Border.symmetric(
          vertical: Divider.createBorderSide(context),
        ),
      ),
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const _SocialIcon(
                  icon: MdiIcons.githubCircle,
                  url: 'https://github.com/loganboisvert',
                  toolTip: 'GitHub',
                ),
                const _SocialIcon(
                  icon: MdiIcons.youtube,
                  url: 'https://www.youtube.com/loganboisvert',
                  toolTip: 'YouTube',
                ),
                const _SocialIcon(
                  icon: MdiIcons.twitch,
                  url: 'https://www.twitch.tv/loganboisvert',
                  toolTip: 'Twitch',
                ),
                const _SocialIcon(
                  icon: MdiIcons.instagram,
                  url: 'https://www.instagram.com/logan_boisvert/',
                  toolTip: 'Instagram',
                ),
                const _SocialIcon(
                  icon: MdiIcons.discord,
                  url: 'https://discord.gg/r72798A',
                  toolTip: 'Discord',
                ),
              ],
            ),
            Divider(
              color: Theme.of(context).accentColor,
              thickness: 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  MdiIcons.copyright,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  '${DateTime.now().year} Logan Boisvert',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _SocialIcon extends StatelessWidget {
  final IconData icon;
  final String url;
  final String toolTip;

  const _SocialIcon(
      {@required this.icon, @required this.url, @required this.toolTip});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 15.0,
      ),
      child: Tooltip(
        message: toolTip,
        child: GestureDetector(
          onTap: () {
            openUrl(url);
          },
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Center(
              child: Icon(
                icon,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

void openUrl(String url) async {
  await launch(url);
}
