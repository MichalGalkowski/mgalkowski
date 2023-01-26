import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';
import '../../my_styles.dart';
import '../../strings.dart';
import '../widgets/project_card.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        Padding(
          padding: const EdgeInsets.all(18.0),
          child: Text(
            'Moje projekty',
            style: MyStyles.headerTextDark,
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * .8,
          child: ResponsiveGridList(
              desiredItemWidth: 300,
              minSpacing: 20,
              rowMainAxisAlignment: MainAxisAlignment.center,
              children: const [
                ProjectCard(
                  description: fpDescription,
                  logo: 'fpnet.png',
                  image: 'fpnet-screen.png',
                  index: 0,
                ),
                ProjectCard(
                  description: lingueyeDescription,
                  logo: 'lingueye.png',
                  image: 'lingueye-screen.png',
                  index: 1,
                ),
                ProjectCard(
                  description: eskarbekDescription,
                  logo: 'eskarbek.png',
                  image: 'eskarbek-screen.png',
                  index: 2,
                ),
                ProjectCard(
                  description: bialyDomekDescription,
                  logo: 'bialy-domek.png',
                  image: 'bialy-domek-screen.png',
                  index: 3,
                ),
              ]
                  .map((e) => FittedBox(
                        fit: BoxFit.scaleDown,
                        child: e,
                      ))
                  .toList()),
        ),
        const Spacer(),
      ],
    );
  }
}
