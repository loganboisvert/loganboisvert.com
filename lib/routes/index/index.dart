import 'package:flutter/material.dart';

import 'package:logan_boisvert_website/widgets/navbuttons.dart';

class IndexRoute extends StatelessWidget {
  static const route = "/";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Logan Boisvert"),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.all(0),
          children: NavButtons.buttons,
        ),
      ),
    );
  }
}
