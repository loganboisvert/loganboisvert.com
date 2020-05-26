// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

// Project imports:
import 'package:logan_boisvert_website/provider/themeChanger.dart';
import 'package:provider/provider.dart';

class ThemeToggler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ThemeChanger _themeChanger = Provider.of<ThemeChanger>(context);

    return Tooltip(
      message:
          'Change to ${_themeChanger.currentTheme == ThemeMode.dark ? "light" : "dark"} theme',
      child: GestureDetector(
        onTap: () {
          _themeChanger.changeCurrentTheme(
            _themeChanger.currentTheme == ThemeMode.dark
                ? ThemeMode.light
                : ThemeMode.dark,
          );
        },
        child: Center(
          child: _HoverIcon(
            icon: _themeChanger.currentTheme == ThemeMode.dark
                ? MdiIcons.weatherSunny
                : MdiIcons.brightness2,
          ),
        ),
      ),
    );
  }
}

class _HoverIcon extends StatefulWidget {
  final IconData icon;

  _HoverIcon({@required this.icon});

  @override
  __HoverIconState createState() => __HoverIconState();
}

class __HoverIconState extends State<_HoverIcon> {
  bool _active = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _active = true),
      onExit: (_) => setState(() => _active = false),
      child: Icon(
        widget.icon,
        color: _active ? Theme.of(context).accentColor : null,
      ),
    );
  }
}
