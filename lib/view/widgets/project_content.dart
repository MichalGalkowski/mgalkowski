import 'package:flutter/material.dart';
import 'package:mgalkowski/view/widgets/content_card.dart';
import 'carousel.dart';

class ProjectContent extends StatelessWidget {
  const ProjectContent(
      {required this.logo,
      required this.description,
      required this.paths,
      super.key});
  final String logo;
  final String description;
  final List<String> paths;

  @override
  Widget build(BuildContext context) {
    final bool isWeb = MediaQuery.of(context).size.width > 1400;
    return Flex(
      direction: isWeb ? Axis.horizontal : Axis.vertical,
      children: [
        isWeb
            ? Flexible(
                child: ContentCard(
                logo: logo,
                description: description,
              ))
            : ContentCard(
                logo: logo,
                description: description,
              ),
        isWeb
            ? Flexible(
                child: SizedBox(width: 800, child: Carousel(paths: paths)))
            : Carousel(paths: paths),
      ],
    );
  }
}
