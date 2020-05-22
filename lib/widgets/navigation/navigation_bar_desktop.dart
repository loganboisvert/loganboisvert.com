import 'package:flutter/material.dart';

import 'package:logan_boisvert_website/routes/about/about.dart';
import 'package:logan_boisvert_website/routes/index/index.dart';
import 'package:logan_boisvert_website/routes/podcast/podcast.dart';
import 'package:logan_boisvert_website/routes/streaming/streaming.dart';
import 'package:url_launcher/url_launcher.dart';

class NavigationBarDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).dividerColor,
      height: 75.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              _NavBarItem(
                name: "HOME",
                url: IndexRoute.route,
                externalLink: false,
              ),
              _NavBarItem(
                name: "ABOUT",
                url: AboutRoute.route,
                externalLink: false,
              ),
              _NavBarItem(
                name: "PODCAST",
                url: PodcastRoute.route,
                externalLink: false,
              ),
              _NavBarItem(
                name: "STREAMING",
                url: StreamingRoute.route,
                externalLink: false,
              ),
              _NavBarItem(
                name: "MERCHANDISE",
                url: "https://shop.spreadshirt.com/loganboisvert",
                externalLink: true,
              ),
            ],
          ),
          Row(),
        ],
      ),
    );
  }
}

class _NavBarItem extends StatefulWidget {
  final String name;
  final String url;
  final bool externalLink;

  const _NavBarItem(
      {@required this.name, this.url, @required this.externalLink});

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
