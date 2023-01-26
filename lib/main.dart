import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'cubit/home_index_cubit.dart';
import 'cubit/project_index_cubit.dart';
import 'view/screens/home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<HomeIndexCubit>(create: (_) => HomeIndexCubit()),
        BlocProvider<ProjectIndexCubit>(create: (_) => ProjectIndexCubit()),
      ],
      child: const MaterialApp(
        home: HomeScreen(),
      ),
    );
  }
}
