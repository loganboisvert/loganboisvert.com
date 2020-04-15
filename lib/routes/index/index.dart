import 'package:flutter/material.dart';

import 'package:logan_boisvert_website/widgets/menu.dart';

class IndexRoute extends StatelessWidget {
  static const route = "/";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Logan Boisvert"),
        centerTitle: true,
      ),
      drawer: Menu()
    );
  }
}
