// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:logan_boisvert_website/widgets/page_templating/page_template.dart';

class Route404 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageTemplate(body: [
      const Text('404\nThe requested page could not be found.'),
    ]);
  }
}
