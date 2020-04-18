// Flutter imports
import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      padding: EdgeInsets.only(bottom: 10),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Icon(
              Icons.copyright,
            ),
            const SizedBox(
              width: 5,
            ),
            Text(
              '${DateTime.now().year}',
              style: const TextStyle(
                fontSize: 16,
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            const Text(
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
