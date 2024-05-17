class Course {
  int id;

  int classId;

  String title;

  String holdTime;

  String holdDay;

  String holdPlace;

  int teacherId;

  String coursePrice;

  Course(
      {required this.id,
      required this.classId,
      required this.title,
      required this.holdTime,
      required this.holdDay,
      required this.holdPlace,
      required this.teacherId,
      required this.coursePrice});
}
