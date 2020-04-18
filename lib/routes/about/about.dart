// Flutter imports
import 'package:flutter/material.dart';

// Project imports
import 'package:logan_boisvert_website/widgets/appbar.dart';
import 'package:logan_boisvert_website/widgets/footer.dart';

class AboutRoute extends StatelessWidget {
  static const route = '/about';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const AppBarTitle(),
        centerTitle: true,
        titleSpacing: 0.0,
      ),
      drawer: const Menu(),
      bottomSheet: const Footer(),
    );
  }
}
