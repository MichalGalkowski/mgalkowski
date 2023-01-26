import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mgalkowski/cubit/project_index_cubit.dart';

class ProjectButton extends StatelessWidget {
  const ProjectButton(
      {required this.index,
      required this.image,
      required this.color,
      super.key});
  final int index;
  final String image;
  final int color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: InkWell(
        onTap: () =>
            context.read<ProjectIndexCubit>().changeProjectIndex(index),
        child: Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
              border: Border.all(
                color: context.watch<ProjectIndexCubit>().state == index
                    ? Color(color)
                    : Colors.white.withOpacity(0),
                width: 4,
              ),
              borderRadius: BorderRadius.circular(12)),
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Container(
                clipBehavior: Clip.antiAlias,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(10.0)),
                child: Image.asset(image)),
          ),
        ),
      ),
    );
  }
}
