import 'package:flutter/material.dart';
import 'package:mgalkowski/my_colors.dart';
import 'package:mgalkowski/my_styles.dart';

class DrawerData extends StatelessWidget {
  const DrawerData({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: [
        Container(
          color: MyColors.darkColor,
          height: 38,
          width: double.infinity,
          child: Center(
            child: Text(
              'Michał Gałkowski',
              style: MyStyles.headerText,
            ),
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        Center(
          child: Column(
            children: [
              SelectableText(
                'email: mggalkowski@gmail.com',
                style: MyStyles.drawerText,
              ),
              const SizedBox(
                height: 8,
              ),
              SelectableText(
                'numer telefonu: 601 094 854',
                style: MyStyles.drawerText,
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 12,
        ),
      ]),
    );
  }
}
