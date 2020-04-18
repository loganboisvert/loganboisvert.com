// Flutter imports
import 'package:flutter/material.dart';

// Project imports
import 'package:logan_boisvert_website/routes/index/index.dart';
import 'package:logan_boisvert_website/widgets/appbar.dart';
import 'package:logan_boisvert_website/widgets/navbuttons.dart';

class Route404 extends StatelessWidget {

    @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AppBarTitle(),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.all(0),
          children: NavButtons.buttons,
        ),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text('404'),
            Text('The requested page could not be found.'),
            NavButton(name: 'Return to Home', route: IndexRoute.route),
          ],
        ),
      ),
    );
  }
}