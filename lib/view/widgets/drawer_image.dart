import 'package:flutter/material.dart';
import 'package:mgalkowski/my_colors.dart';

class DrawerImage extends StatelessWidget {
  const DrawerImage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(42),
      child: CircleAvatar(
        backgroundColor: MyColors.accentColor,
        backgroundImage: AssetImage('noBG.png'),
        radius: 100,
      ),
    );
  }
}
