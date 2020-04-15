import 'package:flutter/material.dart';
import 'package:logan_boisvert_website/routes/about/about.dart';
import 'package:logan_boisvert_website/routes/index/index.dart';
import 'package:logan_boisvert_website/routes/podcast/podcast.dart';
import 'package:logan_boisvert_website/routes/store/store.dart';
import 'package:logan_boisvert_website/routes/streaming/streaming.dart';

import 'package:logan_boisvert_website/widgets/colors.dart';

class NavButtons {
  static const buttons = <Widget>[
    DrawerHeader(
      child: NavButton (name: "Home", route: IndexRoute.route),
    ),
    NavButton(name: "About Me", route: AboutRoute.route),
    NavButton(name: "Podcast", route: PodcastRoute.route),
    NavButton(name: "Streaming", route: StreamingRoute.route),
    NavButton(name: "Store", route: StoreRoute.route),

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
    Color backgroundColor = _active ? ThemeColors.accent : ThemeColors.primary;

    return MouseRegion(
      onEnter: (e) => setState(() => _active = true),
      onExit: (e) => setState(() => _active = false),
      child: Container(
        height: 50,
        child: RaisedButton(
        color: backgroundColor,
        elevation: 1,
        hoverElevation: 3,
        onPressed: () => Navigator.pushNamed(context, widget.route),
        child: Text(
          widget.name,
          style: TextStyle(
            color: ThemeColors.text
          ),
        ),
      ),
      ),
    );
  }
}
