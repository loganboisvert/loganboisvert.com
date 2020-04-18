// Flutter imports
import 'package:flutter/material.dart';

// Project imports
import 'package:logan_boisvert_website/widgets/navbuttons.dart';

class AppBarTitle extends StatelessWidget {
  const AppBarTitle();
  @override
  Widget build(BuildContext context) {
    return const Text('Logan Boisvert', style: TextStyle(fontSize: 42));
  }
}

class Menu extends StatelessWidget {
  const Menu();
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: const EdgeInsets.all(0),
        children: NavButtons.buttons,
      ),
    );
  }
}
