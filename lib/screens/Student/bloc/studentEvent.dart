import 'package:ti/data/Models/Student.dart';

class StudentEvent {}

class FetchStudentCourses extends StudentEvent {
  Student? student;

  FetchStudentCourses({required this.student});
}

class FetchAllCourses extends StudentEvent {}

class FetchCourseDetails extends StudentEvent {
  int? teacherId;
  String? courseName;
  FetchCourseDetails({required this.teacherId, required this.courseName});
}
