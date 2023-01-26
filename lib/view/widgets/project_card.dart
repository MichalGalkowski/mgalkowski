import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mgalkowski/cubit/home_index_cubit.dart';
import 'package:mgalkowski/my_colors.dart';
import 'package:mgalkowski/my_styles.dart';

import '../../cubit/project_index_cubit.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard(
      {required this.logo,
      required this.description,
      required this.image,
      required this.index,
      super.key});
  final String logo;
  final String description;
  final String image;
  final int index;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.read<HomeIndexCubit>().changeHomeIndex(1);
        context.read<ProjectIndexCubit>().changeProjectIndex(index);
      },
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        color: MyColors.lightAccentColor,
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(32.0),
                  child: Image.asset(
                    logo,
                    width: 600,
                    height: 100,
                  ),
                ),
                const SizedBox(
                  height: 8.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(
                      image,
                      height: 500,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Image.asset(
                      image,
                      height: 500,
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Text(
                    description,
                    style: MyStyles.textDarkLight,
                  ),
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
