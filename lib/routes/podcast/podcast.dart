import 'package:flutter/material.dart';

import 'package:logan_boisvert_website/widgets/menu.dart';

class PodcastRoute extends StatelessWidget {
  static const route = "/podcast";

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