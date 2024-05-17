import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ti/screens/Teacher/bloc/teacher_event.dart';
import 'package:ti/screens/Teacher/bloc/teacher_state.dart';

class TeacherBloc extends Bloc<TeacherEvent, TeacherState> {
  TeacherBloc() : super(TeacherInitialState(1)) {
    on<TeacherSelectionEvent>((event, emit) {
      if (event.selection == 1) {
        emit(TeacherFectchListState(1));
      } else if (event.selection == 2) {
        emit(TeacherFectchListState(2));
      } else if (event.selection == 3) {
        emit(TeacherFectchListState(3));
      }
    });
  }
}
