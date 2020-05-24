// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:logan_boisvert_website/widgets/page_templating/page_template.dart';

class IndexRoute extends StatelessWidget {
  static const route = '/';

  @override
  Widget build(BuildContext context) {
    return PageTemplate(
      body: [
        Text("Hello"),
      ],
    );
  }
}
