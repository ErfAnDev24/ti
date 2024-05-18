import 'package:ti/data/Models/Course.dart';
import 'package:ti/data/Models/Student.dart';
import 'package:ti/data/Models/Teacher.dart';

class StudentState {
  List<Course>? courseList;
  List<String>? courseHoldPlaces;
  List<String>? courseHoldDates;
  Teacher? teahcer;

  StudentState(
      {this.courseList,
      this.teahcer,
      this.courseHoldDates,
      this.courseHoldPlaces});
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
  FetchCourseDetailsResponse(teacher, courseHoldPlaces, courseHoldDates)
      : super(
            teahcer: teacher,
            courseHoldPlaces: courseHoldPlaces,
            courseHoldDates: courseHoldDates);
}
