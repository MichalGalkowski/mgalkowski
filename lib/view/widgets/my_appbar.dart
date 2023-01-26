import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubit/home_index_cubit.dart';
import '../../my_colors.dart';
import '../../my_styles.dart';

class MyAppbar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isWeb = MediaQuery.of(context).size.width > 800;
    return AppBar(
        iconTheme: const IconThemeData(color: MyColors.accentColor),
        backgroundColor: MyColors.darkColor,
        centerTitle: true,
        actions: [
          context.watch<HomeIndexCubit>().state == 1
              ? Padding(
                  padding: const EdgeInsets.only(right: 32.0),
                  child: TextButton.icon(
                    icon: const Icon(Icons.home_rounded,
                        color: MyColors.accentColor),
                    label: isWeb
                        ? Text('Strona główna', style: MyStyles.drawerText)
                        : const SizedBox(),
                    onPressed: () =>
                        context.read<HomeIndexCubit>().changeHomeIndex(0),
                  ),
                )
              : const SizedBox(),
        ],
        title: Text(
          'MGalkowski',
          style: MyStyles.headerText,
        ));
  }

  @override
  Size get preferredSize => const Size.fromHeight(38);
}
