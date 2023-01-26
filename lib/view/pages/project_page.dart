import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mgalkowski/cubit/project_index_cubit.dart';
import 'package:mgalkowski/gallery_paths.dart';
import 'package:mgalkowski/strings.dart';
import 'package:mgalkowski/view/widgets/project_button.dart';
import 'package:mgalkowski/view/widgets/project_content.dart';

class ProjectPage extends StatelessWidget {
  const ProjectPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Expanded(
          child: SingleChildScrollView(
            child:
                BlocBuilder<ProjectIndexCubit, int>(builder: (context, state) {
              switch (state) {
                case 0:
                  return const ProjectContent(
                    description: fpDescriptionLong,
                    logo: 'fpnet.png',
                    paths: fpnetGalleryPaths,
                  );
                case 1:
                  return const ProjectContent(
                    description: lingueyeDescriptionLong,
                    logo: 'lingueye.png',
                    paths: lingueyeGalleryPaths,
                  );
                case 2:
                  return const ProjectContent(
                    description: eskarbekDescriptionLong,
                    logo: 'eskarbek.png',
                    paths: eskarbekGalleryPaths,
                  );
                case 3:
                  return const ProjectContent(
                    description: bialyDomekDescriptionLong,
                    logo: 'bialy-domek.png',
                    paths: bialyDomekGalleryPaths,
                  );
                default:
                  return const ProjectContent(
                    description: '',
                    logo: '',
                    paths: [],
                  );
              }
            }),
          ),
        ),
        FittedBox(
          fit: BoxFit.scaleDown,
          child: SizedBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                ProjectButton(
                    index: 0, image: 'icons/fpnet-icon.png', color: 0xffa34016),
                ProjectButton(
                    index: 1,
                    image: 'icons/lingueye-icon.png',
                    color: 0xff61a5c2),
                ProjectButton(
                    index: 2,
                    image: 'icons/eskarbek-icon.png',
                    color: 0xffaed9e0),
                ProjectButton(
                    index: 3,
                    image: 'icons/bialy-domek-icon.png',
                    color: 0xff0a2458),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
