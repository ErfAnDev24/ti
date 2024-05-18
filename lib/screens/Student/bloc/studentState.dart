import 'package:ti/data/Models/Course.dart';
import 'package:ti/data/Models/Student.dart';
import 'package:ti/data/Models/Teacher.dart';

class StudentState {
  List<Course>? courseList;
  List<String>? courseHoldDays;
  List<String>? courseHoldDates;
  Teacher? teahcer;
  String? holdTime;
  String? holdDay;

  StudentState({
    this.courseList,
    this.teahcer,
    this.courseHoldDates,
    this.courseHoldDays,
    this.holdTime,
    this.holdDay,
  });
}

class StudentInitialState extends StudentState {
  StudentInitialState();
}

class StudentLoadingState extends StudentState {
  StudentLoadingState();
}

class StudentCourseResponse extends StudentState {
  StudentCourseResponse(courseList) : super(courseList: courseList);
}

class StudentGetAllCourses extends StudentState {
  StudentGetAllCourses(courseList) : super(courseList: courseList);
}

class AllCourseResponse extends StudentState {
  AllCourseResponse({required super.courseList});
}

class FetchCourseDetailsResponse extends StudentState {
  FetchCourseDetailsResponse(teacher, courseHoldDays, courseHoldDates)
      : super(
            teahcer: teacher,
            courseHoldDays: courseHoldDays,
            courseHoldDates: courseHoldDates,
            holdDay: courseHoldDays[0],
            holdTime: courseHoldDates[0]);
}

class SelectDayState extends StudentState {
  SelectDayState(teacher, holdDay, holdTime, courseHoldDays, courseHoldDates)
      : super(
            teahcer: teacher,
            courseHoldDays: courseHoldDays,
            courseHoldDates: courseHoldDates,
            holdDay: holdDay,
            holdTime: holdTime);
}

class SelectTimeState extends StudentState {
  SelectTimeState(teacher, holdDay, holdTime, courseHoldDays, courseHoldDates)
      : super(
            teahcer: teacher,
            courseHoldDays: courseHoldDays,
            courseHoldDates: courseHoldDates,
            holdDay: holdDay,
            holdTime: holdTime);
}
