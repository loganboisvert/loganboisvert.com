import 'package:flutter/material.dart';
import 'package:logan_boisvert_website/widgets/social_icons.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class NavigationDrawer extends StatelessWidget {
  final navigationLinks;
  final List<Widget> _navDrawerItems = [];

  NavigationDrawer({@required this.navigationLinks}) {
    navigationLinks.forEach((name, valueMap) {
      _navDrawerItems.add(
        _NavDrawerItem(
          name: name,
          url: valueMap["url"],
          externalLink: valueMap["external"],
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconButton(
            icon: Icon(
              MdiIcons.exitToApp,
            ),
            onPressed: () => Navigator.pop(context),
          ),
          Divider(),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: _navDrawerItems,
          ),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: SocialIcons,
          )
        ],
      ),
    );
  }
}

class _NavDrawerItem extends StatefulWidget {
  final String name;
  final String url;
  final bool externalLink;

  const _NavDrawerItem(
      {@required this.name, @required this.url, @required this.externalLink});

  @override
  State<StatefulWidget> createState() {
    return _NavDrawerItemState();
  }
}

class _NavDrawerItemState extends State<_NavDrawerItem> {
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
    return MouseRegion(
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
    );
  }
}
