// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:logan_boisvert_website/routes/about/about.dart';
import 'package:logan_boisvert_website/routes/index/index.dart';
import 'package:logan_boisvert_website/routes/404/404.dart';
import 'package:logan_boisvert_website/routes/podcast/podcast.dart';
import 'package:logan_boisvert_website/routes/streaming/streaming.dart';
import 'package:logan_boisvert_website/themes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Logan Boisvert',
      theme: Themes().light,
      darkTheme: Themes().dark,
      routes: {
        IndexRoute.route: (context) => IndexRoute(),
        AboutRoute.route: (context) => AboutRoute(),
        StreamingRoute.route: (context) => StreamingRoute(),
        PodcastRoute.route: (context) => PodcastRoute(),
      },
      onUnknownRoute: (_) => MaterialPageRoute(
        builder: (context) => Route404(),
      ),
    );
  }
}
