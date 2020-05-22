// Flutter imports
import 'package:flutter/material.dart';

// Project imports
import 'package:logan_boisvert_website/widgets/footer.dart';
import 'package:logan_boisvert_website/widgets/navigation/navigation_bar.dart';

class Route404 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            NavigationBar(),
            const Text('404\nThe requested page could not be found.'),
          ],
        ),
      ),
      bottomSheet: const Footer(),
    );
  }
}
