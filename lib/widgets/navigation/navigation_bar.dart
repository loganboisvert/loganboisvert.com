// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:responsive_builder/responsive_builder.dart';

// Project imports:
import 'package:logan_boisvert_website/widgets/navigation/navigation_bar_desktop.dart';
import 'package:logan_boisvert_website/widgets/navigation/navigation_bar_mobile.dart';

class NavigationBar extends StatelessWidget {
  final navigationLinks;

  NavigationBar({@required this.navigationLinks});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).dividerColor,
      height: 75.0,
      child: ScreenTypeLayout(
        mobile: NavigationBarMobile(),
        tablet: NavigationBarDesktop(
          navigationLinks: navigationLinks,
        ),
        desktop: NavigationBarDesktop(
          navigationLinks: navigationLinks,
        ),
      ),
    );
  }
}
