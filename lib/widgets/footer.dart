// Flutter imports
import 'package:flutter/material.dart';
import 'package:logan_boisvert_website/widgets/colors.dart';

// Package imports
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class Footer extends StatelessWidget {
  const Footer();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      padding: EdgeInsets.only(bottom: 10),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const _SocialIcon(
              icon: MdiIcons.githubCircle,
              url: 'https://github.com/loganboisvert',
              toolTip: 'GitHub',
            ),
            const SizedBox(
              width: 20,
            ),
            const Icon(
              MdiIcons.copyright,
              color: ThemeColors.accent,
            ),
            const SizedBox(
              width: 5,
            ),
            Text(
              '${DateTime.now().year}',
              style: const TextStyle(
                fontSize: 16,
                color: ThemeColors.accent,
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            const Text(
              'Logan Boisvert',
              style: TextStyle(
                fontSize: 16,
                color: ThemeColors.accent,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _SocialIcon extends StatefulWidget {
  final IconData icon;
  final String url;
  final String toolTip;

  const _SocialIcon(
      {@required this.icon, @required this.url, @required this.toolTip});

  @override
  State<StatefulWidget> createState() {
    return _SocialIconState();
  }
}

class _SocialIconState extends State<_SocialIcon> {
  bool _hovering = false;

  @override
  Widget build(BuildContext context) {
    Color backgroundColor =
        _hovering ? ThemeColors.accent : ThemeColors.primary;
    Color iconColor = _hovering ? ThemeColors.primary : ThemeColors.accent;
    return Tooltip(
      message: widget.toolTip,
      child: GestureDetector(
        onTap: () {
          openUrl(widget.url);
        },
        child: MouseRegion(
          onEnter: (_) {
            setState(() {
              _hovering = true;
            });
          },
          onExit: (_) {
            setState(() {
              _hovering = false;
            });
          },
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: backgroundColor,
            ),
            child: Icon(
              widget.icon,
              color: iconColor,
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
