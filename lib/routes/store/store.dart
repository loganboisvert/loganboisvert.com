import 'package:flutter/material.dart';

import 'package:logan_boisvert_website/widgets/appbar.dart';

class StoreRoute extends StatelessWidget {
  static const route = "/store";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Logan Boisvert", style: TextStyle(fontSize: 42)),
        centerTitle: true,
        titleSpacing: 0.0,
      ),
      drawer: Menu(),
    );
  }
}
