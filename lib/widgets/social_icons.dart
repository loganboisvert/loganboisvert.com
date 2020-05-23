import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

const SocialIcons = [
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
];

class _SocialIcon extends StatefulWidget {
  final IconData icon;
  final String url;
  final String toolTip;

  const _SocialIcon(
      {@required this.icon, @required this.url, @required this.toolTip});

  @override
  __SocialIconState createState() => __SocialIconState();
}

class __SocialIconState extends State<_SocialIcon> {
  bool _active = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 15.0,
      ),
      child: MouseRegion(
        onEnter: (_) => setState(() => _active = true),
        onExit: (_) => setState(() => _active = false),
        child: Tooltip(
          message: widget.toolTip,
          child: GestureDetector(
            onTap: () {
              openUrl(widget.url);
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Icon(
                  widget.icon,
                  color: _active ? Theme.of(context).accentColor : null,
                ),
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
