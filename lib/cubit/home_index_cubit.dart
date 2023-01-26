import 'package:flutter_bloc/flutter_bloc.dart';

abstract class HomeIndexState {}

class HomeIndexCubit extends Cubit<int> {
  HomeIndexCubit() : super(0);

  void changeHomeIndex(int index) => emit(index);
}
