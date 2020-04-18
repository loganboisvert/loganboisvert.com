// Flutter imports
import 'package:flutter/material.dart';

// Project imports
import 'package:logan_boisvert_website/widgets/appbar.dart';

class StreamingRoute extends StatelessWidget {
  static const route = '/stream';

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
