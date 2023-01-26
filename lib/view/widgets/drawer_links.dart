import 'package:flutter/material.dart';
import 'github_button.dart';
import 'gplay_button.dart';

class DrawerLinks extends StatelessWidget {
  const DrawerLinks({super.key});

  @override
  Widget build(BuildContext context) {
    String github = 'https://github.com/MichalGalkowski';
    String gplay =
        'https://play.google.com/store/apps/developer?id=MGalkowski&gl=PL';
    return SizedBox(
      height: 160,
      child: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          SizedBox(
            width: 220.0,
            child: GithubButton(
              link: github,
              text: 'KONTO GITHUB',
            ),
          ),
          const SizedBox(
            height: 32,
          ),
          SizedBox(
            width: 220.0,
            child: GPlayButton(
              link: gplay,
              text: 'KONTO GOOGLE PLAY',
            ),
          ),
        ]),
      ),
    );
  }
}
