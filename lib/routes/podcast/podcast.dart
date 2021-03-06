// Dart imports:
import 'dart:html';
import 'dart:ui' as ui;

// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:logan_boisvert_website/widgets/page_templating/page_template.dart';

class PodcastRoute extends StatelessWidget {
  static const route = '/podcast';

  @override
  Widget build(BuildContext context) {
    return PageTemplate(
      body: [
        const SizedBox(height: 150),
        const Text(
          'The Noodle Squad',
          style: TextStyle(
            fontSize: 48,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 50,
        ),
        const Text('Lorem ipsum dolor sit amet'),
        const SizedBox(
          height: 50,
        ),
        SizedBox(
          height: 300,
          width: 1000,
          child: _IFrame(
            width: '1000',
            src: 'https://anchor.fm/logan-boisvert/embed',
          ),
        ),
      ],
    );
  }
}

class _IFrame extends StatelessWidget {
  final IFrameElement _iFrameElement = new IFrameElement();

  _IFrame({@required String src, @required String width}) {
    _iFrameElement.width = width;
    _iFrameElement.src = src;
    _iFrameElement.style.border = 'none';

    // ignore: undefined_prefixed_name
    ui.platformViewRegistry.registerViewFactory(
      'iFrameElement',
      (int viewId) => _iFrameElement,
    );
  }

  @override
  Widget build(BuildContext context) {
    return HtmlElementView(
      key: UniqueKey(),
      viewType: 'iFrameElement',
    );
  }
}
