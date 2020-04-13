import 'package:flutter/material.dart';

import 'package:logan_boisvert_website/routes/index/index.dart';
import 'package:logan_boisvert_website/routes/404/404.dart';
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
      theme: Themes().mainTheme,
      darkTheme: Themes().mainTheme,
      routes: {
        IndexRoute.route: (context) => IndexRoute(),
      },
      onUnknownRoute: (_) => MaterialPageRoute(
        builder: (context) => Route404(),
      ),
    );
  }
}
