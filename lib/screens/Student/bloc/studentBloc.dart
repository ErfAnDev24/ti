import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ti/data/Models/Course.dart';
import 'package:ti/data/Models/Teacher.dart';
import 'package:ti/data/staticData.dart';
import 'package:ti/screens/Student/bloc/studentEvent.dart';
import 'package:ti/screens/Student/bloc/studentState.dart';

class StudentBloc extends Bloc<StudentEvent, StudentState> {
  StaticData data = StaticData();

  StudentBloc() : super(StudentInitialState()) {
    on<FetchStudentCourses>((event, emit) {
      emit(StudentLoadingState());

      emit(StudentCourseResponse(
          data.getAllCourseByClassIds(event.student!.studentCourse)));
    });

    on<FetchAllCourses>((event, emit) {
      emit(StudentLoadingState());

      emit(StudentGetAllCourses(data.getAllCourses()));
    });

    on<FetchCourseDetails>((event, emit) {
      emit(StudentLoadingState());

      print('ErfAn check 3');
      Teacher teacher = data.getTeacherObject(event.teacherId!);

      print('ErfAn check ${teacher.fullName}');
      List<Course> courseList = data
          .getAllCourseByTeacherId(event.teacherId!)
          .where((element) => element.title == event.courseName)
          .toList();

      List<String> days = courseList.map((e) => e.holdDay).toSet().toList();

      List<String> dates = courseList.map((e) => e.holdTime).toSet().toList();

      emit(FetchCourseDetailsResponse(teacher, days, dates));
    });
  }
}
