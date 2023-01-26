import 'package:flutter/material.dart';

import '../../my_colors.dart';
import '../../my_styles.dart';

class ContentCard extends StatelessWidget {
  const ContentCard({required this.logo, required this.description, super.key});
  final String logo;
  final String description;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 800,
      child: Padding(
        padding: const EdgeInsets.all(38.0),
        child: Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          color: MyColors.lightAccentColor,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(38.0),
                child: Image.asset(
                  logo,
                  height: 80,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Text(
                  description,
                  style: MyStyles.textDarkSmall,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
