// Flutter import
import 'package:flutter/material.dart';

// Dart web imports
import 'dart:html';
import 'dart:ui' as ui;

// Project imports
import 'package:logan_boisvert_website/widgets/appbar.dart';

class PodcastRoute extends StatelessWidget {
  static const route = '/podcast';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AppBarTitle(),
        centerTitle: true,
        titleSpacing: 0.0,
      ),
      drawer: Menu(),
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(height: 150),
            Text(
              'The Noodle Squad',
              style: TextStyle(
                fontSize: 48,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 50,
            ),
            Text('Lorem ipsum dolor sit amet'),
            SizedBox(
              height: 50,
            ),
            SizedBox(
              height: 300,
              width: 1000,
              child: _IFrame(
                width: '1000',
                src: 'https://anchor.fm/logan-boisvert/embed',
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _IFrame extends StatelessWidget {
  final IFrameElement _iFrameElement = new IFrameElement();

  _IFrame(
      {@required String src, @required String width}) {
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
