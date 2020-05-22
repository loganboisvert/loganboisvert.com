// Flutter imports
import 'package:flutter/material.dart';

// Project imports
import 'package:logan_boisvert_website/routes/about/about.dart';
import 'package:logan_boisvert_website/routes/index/index.dart';
import 'package:logan_boisvert_website/routes/podcast/podcast.dart';
import 'package:logan_boisvert_website/routes/streaming/streaming.dart';

class NavButtons {
  static const buttons = <Widget>[
    DrawerHeader(
      child: NavButton(name: 'Home', route: IndexRoute.route),
    ),
    NavButton(name: 'About Me', route: AboutRoute.route),
    NavButton(name: 'Podcast', route: PodcastRoute.route),
    NavButton(name: 'Streaming', route: StreamingRoute.route),
  ];
}

class NavButton extends StatefulWidget {
  final String name, route;

  const NavButton({@required this.name, @required this.route});

  @override
  State<StatefulWidget> createState() => _NavButtonState();
}

class _NavButtonState extends State<NavButton> {
  bool _active = false;

  @override
  Widget build(BuildContext context) {
    Color backgroundColor = _active
        ? Theme.of(context).accentColor
        : Theme.of(context).primaryColor;

    return MouseRegion(
        onEnter: (e) => setState(() => _active = true),
        onExit: (e) => setState(() => _active = false),
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Container(
            height: 50,
            child: RaisedButton(
              color: backgroundColor,
              elevation: 1,
              hoverElevation: 3,
              onPressed: () => Navigator.pushNamed(context, widget.route),
              child: Text(
                widget.name,
                style: const TextStyle(
                  fontSize: 36,
                ),
              ),
            ),
          ),
        ));
  }
}
