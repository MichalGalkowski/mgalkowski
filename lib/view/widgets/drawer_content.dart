import 'package:flutter/material.dart';

import 'drawer_data.dart';
import 'drawer_image.dart';
import 'drawer_links.dart';

class DrawerContent extends StatelessWidget {
  const DrawerContent({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Column(
          children: const [
            DrawerImage(),
            DrawerData(),
            DrawerLinks(),
          ],
        ),
      ),
    );
  }
}
