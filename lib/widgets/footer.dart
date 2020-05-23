// Flutter imports
import 'package:flutter/material.dart';
import 'package:logan_boisvert_website/widgets/social_icons.dart';

// Package imports
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Footer extends StatelessWidget {
  const Footer();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: Theme.of(context).dividerColor,
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: SocialIcons,
            ),
            Divider(
              color: Theme.of(context).accentColor,
              thickness: 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  MdiIcons.copyright,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  '${DateTime.now().year} Logan Boisvert',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
