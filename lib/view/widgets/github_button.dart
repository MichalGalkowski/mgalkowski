import 'package:flutter/material.dart';
// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;

import '../../my_styles.dart';

class GithubButton extends StatelessWidget {
  const GithubButton({required this.link, required this.text, super.key});
  final String link;
  final String text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.black,
      ),
      onPressed: () {
        html.window.open(link, 'GITHUB');
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              'github.png',
              width: 24,
            ),
            Text(
              text,
              style: MyStyles.buttonTextWhite,
            ),
          ],
        ),
      ),
    );
  }
}
