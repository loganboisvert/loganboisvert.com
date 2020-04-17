import 'package:flutter/material.dart';

import 'package:logan_boisvert_website/widgets/appbar.dart';

class AboutRoute extends StatelessWidget {
  static const route = "/about";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AppBarTitle(),
        centerTitle: true,
        titleSpacing: 0.0,
      ),
      drawer: Menu(),
    );
  }
}
