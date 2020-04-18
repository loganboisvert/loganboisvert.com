// Flutter imports
import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      padding: EdgeInsets.only(bottom: 10),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.copyright,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              '${DateTime.now().year}',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              'Logan Boisvert',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
