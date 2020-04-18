// Flutter imports
import 'package:flutter/material.dart';

// Project imports
import 'package:logan_boisvert_website/routes/index/index.dart';
import 'package:logan_boisvert_website/widgets/appbar.dart';
import 'package:logan_boisvert_website/widgets/footer.dart';
import 'package:logan_boisvert_website/widgets/navbuttons.dart';

class Route404 extends StatelessWidget {

    @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const AppBarTitle(),
        centerTitle: true,
      ),
      drawer: const Menu(),
      body: Center(
        child: Column(
          children: <Widget>[
            const Text('404'),
            const Text('The requested page could not be found.'),
            const NavButton(name: 'Return to Home', route: IndexRoute.route),
          ],
        ),
      ),
      bottomSheet: const Footer(),
    );
  }
}