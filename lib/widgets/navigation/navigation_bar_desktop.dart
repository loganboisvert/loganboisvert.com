// Flutter imports:
import 'package:flutter/material.dart';
import 'package:logan_boisvert_website/widgets/theme_toggler.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

// Package imports:
import 'package:url_launcher/url_launcher.dart';

// Project imports:
import 'package:logan_boisvert_website/widgets/social_icons.dart';

class NavigationBarDesktop extends StatelessWidget {
  final navigationLinks;
  final List<Widget> _navBarItems = [];

  NavigationBarDesktop({@required this.navigationLinks}) {
    navigationLinks.forEach((name, valueMap) {
      _navBarItems.add(
        _NavBarItem(
          name: name,
          url: valueMap["url"],
          externalLink: valueMap["external"],
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: _navBarItems,
        ),
        ThemeToggler(),
      ],
    );
  }
}

class _NavBarItem extends StatefulWidget {
  final String name;
  final String url;
  final bool externalLink;

  const _NavBarItem(
      {@required this.name, @required this.url, @required this.externalLink});

  @override
  State<StatefulWidget> createState() {
    return _NavBarItemState();
  }
}

class _NavBarItemState extends State<_NavBarItem> {
  bool _active = false;

  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0),
      child: MouseRegion(
        onEnter: (e) => setState(() => _active = true),
        onExit: (e) => setState(() => _active = false),
        child: FlatButton(
          onPressed: () {
            if (widget.externalLink) {
              _launchURL(widget.url);
            } else {
              Navigator.popAndPushNamed(context, widget.url);
            }
          },
          child: Text(
            widget.name,
            style: TextStyle(
              fontSize: 20.0,
              color: _active
                  ? Theme.of(context).accentColor
                  : Theme.of(context).primaryColorDark,
            ),
          ),
        ),
      ),
    );
  }
}
