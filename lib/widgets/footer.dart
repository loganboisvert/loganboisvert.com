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
            Icon(
              MdiIcons.copyright,
            ),
            const SizedBox(
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
    return Tooltip(
      message: toolTip,
      child: GestureDetector(
        onTap: () {
          openUrl(url);
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Icon(
            icon,
          ),
        ),
      ),
    );
  }
}

void openUrl(String url) async {
  await launch(url);
}
