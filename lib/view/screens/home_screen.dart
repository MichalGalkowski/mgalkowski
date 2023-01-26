import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mgalkowski/cubit/home_index_cubit.dart';
import 'package:mgalkowski/my_colors.dart';
import 'package:mgalkowski/view/widgets/my_appbar.dart';

import '../pages/main_page.dart';
import '../pages/project_page.dart';
import '../widgets/drawer_content.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static const routeName = 'home';

  @override
  Widget build(BuildContext context) {
    final bool isWeb = MediaQuery.of(context).size.width > 800;
    return Scaffold(
      drawerEnableOpenDragGesture: true,
      backgroundColor: MyColors.accentColor,
      appBar: const MyAppbar(),
      body: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          isWeb
              ? Container(
                  color: MyColors.mainColor,
                  width: 304.0,
                  height: double.infinity,
                  child: const DrawerContent(),
                )
              : const SizedBox(),
          Expanded(
            child: BlocBuilder<HomeIndexCubit, int>(
              builder: (context, state) {
                switch (state) {
                  case 0:
                    return const MainPage();
                  case 1:
                    return const ProjectPage();
                  default:
                    return const MainPage();
                }
              },
            ),
          ),
        ],
      ),
      drawer: isWeb
          ? null
          : const Drawer(
              backgroundColor: MyColors.mainColor,
              child: Padding(
                padding: EdgeInsets.only(top: 38.0),
                child: DrawerContent(),
              ),
            ),
    );
  }
}
