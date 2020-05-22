// Flutter imports
import 'package:flutter/material.dart';

// Project imports
import 'package:logan_boisvert_website/widgets/appbar.dart';
import 'package:logan_boisvert_website/widgets/footer.dart';
import 'package:logan_boisvert_website/widgets/navigation/navigation_bar.dart';

class IndexRoute extends StatelessWidget {
  static const route = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          NavigationBar(),
        ],
      ),
      // drawer: const Menu(),
      bottomSheet: const Footer(),
    );
  }
}
