import 'package:flutter/material.dart';
import 'package:logan_boisvert_website/routes/index/index.dart';

import 'package:logan_boisvert_website/widgets/colors.dart';

class NavButtons {
  static const buttons = <Widget>[
    DrawerHeader(
      child: NavButton (name: "Home", route: IndexRoute.route),
    ),
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
