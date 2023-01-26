import 'package:flutter/material.dart';
// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;

import '../../my_styles.dart';

class GPlayButton extends StatelessWidget {
  const GPlayButton({required this.link, required this.text, super.key});
  final String link;
  final String text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
      ),
      onPressed: () {
        html.window.open(link, 'GOOGLE PLAY');
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              'gplay.png',
              width: 24,
            ),
            const SizedBox(
              width: 2,
            ),
            Text(
              text,
              style: MyStyles.buttonTextGrey,
            ),
          ],
        ),
      ),
    );
  }
}
