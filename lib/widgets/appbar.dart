import 'package:flutter/material.dart';

import 'package:logan_boisvert_website/widgets/navbuttons.dart';

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
          padding: EdgeInsets.all(0),
          children: NavButtons.buttons,
        ),
      );
  }

}