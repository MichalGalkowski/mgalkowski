import 'package:flutter_bloc/flutter_bloc.dart';

abstract class ProjectIndexState {}

class ProjectIndexCubit extends Cubit<int> {
  ProjectIndexCubit() : super(0);

  void changeProjectIndex(int index) => emit(index);
}
