// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:responsive_builder/responsive_builder.dart';

// Project imports:
import 'package:logan_boisvert_website/routes/about/about.dart';
import 'package:logan_boisvert_website/routes/index/index.dart';
import 'package:logan_boisvert_website/routes/podcast/podcast.dart';
import 'package:logan_boisvert_website/routes/streaming/streaming.dart';
import 'package:logan_boisvert_website/widgets/footer.dart';
import 'package:logan_boisvert_website/widgets/navigation/navigation_bar.dart';
import 'package:logan_boisvert_website/widgets/navigation/navigation_drawer.dart';

class PageTemplate extends StatelessWidget {
  final List<Widget> body;

  PageTemplate({@required this.body});

  final _navigationLinks = {
    "HOME": {
      "url": IndexRoute.route,
      "external": false,
    },
    "ABOUT": {
      "url": AboutRoute.route,
      "external": false,
    },
    "PODCAST": {
      "url": PodcastRoute.route,
      "external": false,
    },
    "STREAMING": {
      "url": StreamingRoute.route,
      "external": false,
    },
    "MERCHANDISE": {
      "url": "https://shop.spreadshirt.com/loganboisvert",
      "external": true,
    },
  };

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
        drawer: sizingInformation.deviceScreenType == DeviceScreenType.mobile
            ? NavigationDrawer(
                navigationLinks: _navigationLinks,
              )
            : null,
        body: Column(
          children: [
            NavigationBar(
              navigationLinks: _navigationLinks,
            ),
            SizedBox(height: 50.0),
            Column(
              children: body ?? <Widget>[],
            ),
          ],
        ),
        bottomSheet: const Footer(),
      ),
    );
  }
}
