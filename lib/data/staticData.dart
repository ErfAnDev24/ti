import 'package:ti/data/Models/Course.dart';
import 'package:ti/data/Models/CourseName.dart';
import 'package:ti/data/Models/Student.dart';
import 'package:ti/data/Models/Teacher.dart';

class StaticData {
  List<Course> allCourses = [];

  List<CourseName> allCourseNames = [];

  List<Teacher> allTeachers = [];

  List<Student> allStudents = [];

  StaticData() {
    allCourses = [
      Course(
          id: 1,
          classId: 1,
          title: 'Java',
          holdTime: '8:00',
          holdDay: 'شنبه',
          teacherId: 1,
          holdPlace: 'A1',
          coursePrice: '8000000'),

      Course(
          id: 1,
          classId: 2,
          title: 'Java',
          holdTime: '12:00',
          holdDay: 'شنبه',
          teacherId: 1,
          holdPlace: 'A1',
          coursePrice: '8000000'),

      Course(
          id: 2,
          classId: 3,
          title: 'Phyton',
          holdTime: '8:00',
          holdDay: 'شنبه',
          teacherId: 2,
          holdPlace: 'A2',
          coursePrice: '8000000'),

      Course(
          id: 2,
          classId: 4,
          title: 'Phyton',
          holdTime: '12:00',
          holdDay: 'شنبه',
          teacherId: 2,
          holdPlace: 'A2',
          coursePrice: '8000000'),

      Course(
          id: 3,
          classId: 5,
          title: 'Flutter',
          holdTime: '8:00',
          holdDay: 'شنبه',
          teacherId: 3,
          holdPlace: 'A3',
          coursePrice: '10000000'),

      Course(
          id: 3,
          classId: 6,
          title: 'Flutter',
          holdTime: '12:00',
          holdDay: 'شنبه',
          teacherId: 3,
          holdPlace: 'A3',
          coursePrice: '10000000'),

// --------------- شنبه

      Course(
          id: 4,
          classId: 7,
          title: 'Mastering Linux',
          holdTime: '8:00',
          holdDay: 'یک شنبه',
          teacherId: 2,
          holdPlace: 'A1',
          coursePrice: '8000000'),

      Course(
          id: 4,
          classId: 8,
          title: 'Mastering Linux',
          holdTime: '12:00',
          holdDay: 'یک شنبه',
          teacherId: 2,
          holdPlace: 'A1',
          coursePrice: '8000000'),

      Course(
          id: 5,
          classId: 9,
          title: 'Sofware Engieering',
          holdTime: '8:00',
          holdDay: 'یک شنبه',
          teacherId: 5,
          holdPlace: 'A2',
          coursePrice: '8000000'),

      Course(
          id: 5,
          classId: 10,
          title: 'Sofware Engieering',
          holdTime: '12:00',
          holdDay: 'یک شنبه',
          teacherId: 5,
          holdPlace: 'A2',
          coursePrice: '8000000'),

      Course(
          id: 6,
          classId: 11,
          title: 'Web design',
          holdTime: '8:00',
          holdDay: 'یک شنبه',
          teacherId: 6,
          holdPlace: 'A3',
          coursePrice: '5000000'),

      Course(
          id: 6,
          classId: 12,
          title: 'Web design',
          holdTime: '12:00',
          holdDay: 'یک شنبه',
          teacherId: 6,
          holdPlace: 'A3',
          coursePrice: '5000000'),

//--------------- یکشنبه

      Course(
          id: 7,
          classId: 13,
          title: 'UI UX',
          holdTime: '8:00',
          holdDay: 'دو شنبه',
          teacherId: 6,
          holdPlace: 'A1',
          coursePrice: '5000000'),

      Course(
          id: 8,
          classId: 14,
          title: 'UI UX',
          holdTime: '12:00',
          holdDay: 'دو شنبه',
          teacherId: 6,
          holdPlace: 'A1',
          coursePrice: '5000000'),

      Course(
          id: 9,
          classId: 15,
          title: 'Oracle database',
          holdTime: '8:00',
          holdDay: 'دو شنبه',
          teacherId: 5,
          holdPlace: 'A2',
          coursePrice: '7000000'),

      Course(
          id: 9,
          classId: 16,
          title: 'Oracle database',
          holdTime: '12:00',
          holdDay: 'دو شنبه',
          teacherId: 5,
          holdPlace: 'A2',
          coursePrice: '7000000'),

      Course(
          id: 10,
          classId: 17,
          title: 'Spring boot',
          holdTime: '8:00',
          holdDay: 'دو شنبه',
          teacherId: 1,
          holdPlace: 'A3',
          coursePrice: '9000000'),

      Course(
          id: 11,
          classId: 18,
          title: 'Spring boot',
          holdTime: '12:00',
          holdDay: 'دو شنبه',
          teacherId: 1,
          holdPlace: 'A3',
          coursePrice: '9000000'),
//-------------- دوشنبه

      Course(
          id: 1,
          classId: 19,
          title: 'Java',
          holdTime: '8:00',
          holdDay: 'سه شنبه',
          teacherId: 1,
          holdPlace: 'A1',
          coursePrice: '8000000'),

      Course(
          id: 1,
          classId: 20,
          title: 'Java',
          holdTime: '12:00',
          holdDay: 'سه شنبه',
          teacherId: 1,
          holdPlace: 'A1',
          coursePrice: '8000000'),

      Course(
          id: 2,
          classId: 21,
          title: 'Python',
          holdTime: '8:00',
          holdDay: 'سه شنبه',
          teacherId: 2,
          holdPlace: 'A2',
          coursePrice: '8000000'),

      Course(
          id: 2,
          classId: 22,
          title: 'Python',
          holdTime: '12:00',
          holdDay: 'سه شنبه',
          teacherId: 2,
          holdPlace: 'A2',
          coursePrice: '8000000'),

      Course(
          id: 3,
          classId: 23,
          title: 'Flutter',
          holdTime: '8:00',
          holdDay: 'سه شنبه',
          teacherId: 3,
          holdPlace: 'A3',
          coursePrice: '10000000'),

      Course(
          id: 3,
          classId: 24,
          title: 'Flutter',
          holdTime: '12:00',
          holdDay: 'سه شنبه',
          teacherId: 3,
          holdPlace: 'A3',
          coursePrice: '10000000'),

//--------------- سه شنبه

      Course(
          id: 4,
          classId: 25,
          title: 'Mastering Linux',
          holdTime: '8:00',
          holdDay: 'چهار شنبه',
          teacherId: 2,
          holdPlace: 'A1',
          coursePrice: '8000000'),

      Course(
          id: 4,
          classId: 26,
          title: 'Mastering Linux',
          holdTime: '12:00',
          holdDay: 'چهار شنبه',
          teacherId: 2,
          holdPlace: 'A1',
          coursePrice: '8000000'),

      Course(
          id: 5,
          classId: 27,
          title: 'Sofware Engieering',
          holdTime: '8:00',
          holdDay: 'چهار شنبه',
          teacherId: 5,
          holdPlace: 'A2',
          coursePrice: '8000000'),

      Course(
          id: 5,
          classId: 28,
          title: 'Sofware Engieering',
          holdTime: '12:00',
          holdDay: 'چهار شنبه',
          teacherId: 5,
          holdPlace: 'A2',
          coursePrice: '8000000'),

      Course(
          id: 6,
          classId: 29,
          title: 'Web design',
          holdTime: '8:00',
          holdDay: 'چهار شنبه',
          teacherId: 4,
          holdPlace: 'A3',
          coursePrice: '5000000'),

      Course(
          id: 6,
          classId: 30,
          title: 'Web design',
          holdTime: '12:00',
          holdDay: 'چهار شنبه',
          teacherId: 4,
          holdPlace: 'A3',
          coursePrice: '5000000'),

//--------------- چهارشنبه

      Course(
          id: 7,
          classId: 31,
          title: 'UI UX',
          holdTime: '8:00',
          holdDay: 'پنج شنبه',
          teacherId: 4,
          holdPlace: 'A1',
          coursePrice: '5000000'),

      Course(
          id: 7,
          classId: 32,
          title: 'UI UX',
          holdTime: '12:00',
          holdDay: 'پنج شنبه',
          teacherId: 4,
          holdPlace: 'A1',
          coursePrice: '5000000'),

      Course(
          id: 8,
          classId: 33,
          title: 'Oracle database',
          holdTime: '8:00',
          holdDay: 'پنج شنبه',
          teacherId: 5,
          holdPlace: 'A2',
          coursePrice: '7000000'),

      Course(
          id: 8,
          classId: 34,
          title: 'Oracle database',
          holdTime: '12:00',
          holdDay: 'پنج شنبه',
          teacherId: 5,
          holdPlace: 'A2',
          coursePrice: '7000000'),

      Course(
          id: 9,
          classId: 35,
          title: 'Spring boot',
          holdTime: '8:00',
          holdDay: 'پنج شنبه',
          teacherId: 1,
          holdPlace: 'A3',
          coursePrice: '10000000'),

      Course(
          id: 9,
          classId: 36,
          title: 'Spring boot',
          holdTime: '12:00',
          holdDay: 'پنج شنبه',
          teacherId: 1,
          holdPlace: 'A3',
          coursePrice: '10000000'),

//--------------- پنجشنبه
    ];

    allTeachers = [
      Teacher(
        fullName: 'عرفان پزشک پور',
        phoneNumber: '+989300000001',
        id: 1,
        courseIds: [1, 2, 17, 18, 19, 20, 35, 36],
      ),
      Teacher(
        fullName: 'جادی میرمیرانی',
        phoneNumber: '+989300000002',
        id: 2,
        courseIds: [3, 4, 7, 8, 21, 22, 25, 26],
      ),
      Teacher(
        fullName: 'پیام زاهدی',
        phoneNumber: '+989300000003',
        id: 3,
        courseIds: [5, 6, 23, 24],
      ),
      Teacher(
        fullName: 'فاطمه رفیعی',
        phoneNumber: '+989300000004',
        id: 4,
        courseIds: [11, 12, 13, 14, 29, 30, 31, 32],
      ),
      Teacher(
        fullName: 'علیرضا نیکروان',
        phoneNumber: '+989300000005',
        id: 5,
        courseIds: [9, 10, 15, 16, 27, 28, 33, 34],
      ),
    ];

    allCourseNames = [
      CourseName(1, 'Java'),
      CourseName(2, 'Python'),
      CourseName(3, 'Flutter'),
      CourseName(4, 'Mastering Linux'),
      CourseName(5, 'Software Engineering'),
      CourseName(6, 'web design'),
      CourseName(7, 'UI UX'),
      CourseName(8, 'Oracle database'),
      CourseName(9, 'Spring Boor'),
    ];
  }

  List<Course> getAllCourseByClassIds(List<int> classIds) {
    List<Course> studentCourses = [];

    for (int i = 0; i < classIds.length; i++) {
      studentCourses.add(
          allCourses.firstWhere((element) => element.classId == classIds[i]));
    }

    return studentCourses;
  }

  List<Course> getAllCourses() {
    return allCourses;
  }

  List<Course> getAllCourseByTeacherId(int teacherId) {
    List<Course> teacherCourses = [];

    teacherCourses =
        allCourses.where((element) => element.teacherId == teacherId).toList();

    return teacherCourses;
  }

  List<Course> getAllCourseDatesByTeacherId(int teacherId) {
    List<Course> teacherCourses = [];

    teacherCourses =
        allCourses.where((element) => element.teacherId == teacherId).toList();

    return teacherCourses;
  }

  Teacher getTeacherObject(int teacherId) {
    Teacher teahcer;

    teahcer = allTeachers.firstWhere((element) => element.id == teacherId);

    return teahcer;
  }
}
