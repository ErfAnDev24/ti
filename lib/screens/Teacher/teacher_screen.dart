import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ti/constants/color_manager.dart';
import 'package:ti/data/Models/Course.dart';
import 'package:ti/screens/Teacher/bloc/teacher_bloc.dart';
import 'package:ti/screens/Teacher/bloc/teacher_event.dart';
import 'package:ti/screens/Teacher/bloc/teacher_state.dart';
import 'package:ti/screens/Teacher/presence_absecnse_screen.dart';
import 'package:ti/screens/Teacher/register_grade_screen.dart';
import 'package:ti/screens/Teacher/teacher_course_details.dart';

class TeacherScreen extends StatelessWidget {
  const TeacherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          width: 100,
          height: 50,
          child: const Image(
            image: AssetImage('images/Startlogo.png'),
            fit: BoxFit.contain,
          ),
        ),
        backgroundColor: ColorManager.purple,
        toolbarHeight: 50,
        centerTitle: true,
      ),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: Colors.red,
            child: Info(),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.65,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30), topRight: Radius.circular(30)),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                CourseTabs(context),
                SizedBox(
                  height: 40,
                ),
                BlocBuilder<TeacherBloc, TeacherState>(
                  builder: (context, state) {
                    return Container(
                      width: MediaQuery.of(context).size.width * 0.9,
                      height: MediaQuery.of(context).size.height * 0.5,
                      color: Colors.red,
                      child: state.selectedSection == 1
                          ? teacherCourses(context)
                          : state.selectedSection == 2
                              ? teacherPresenceAbsence(context)
                              : registeringGrades(context),
                    );
                  },
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  ListView registeringGrades(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: 10),
      children: [
        CourseCard(
          course: Course(
              id: 1,
              classId: 1,
              title: 'نمره دهی برای کلاس 1',
              holdTime: '',
              holdDay: '',
              holdPlace: '',
              teacherId: 1,
              coursePrice: '8000000'),
          onTabMethod: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => RegisterGradeScreen(),
              ),
            );
          },
        ),
        CourseCard(
          course: Course(
              id: 1,
              classId: 1,
              title: 'نمره دهی برای کلاس 2',
              holdTime: '',
              holdDay: '',
              holdPlace: '',
              teacherId: 1,
              coursePrice: '8000000'),
          onTabMethod: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => RegisterGradeScreen(),
              ),
            );
          },
        ),
        CourseCard(
          course: Course(
              id: 1,
              classId: 1,
              title: 'نمره دهی برای کلاس 3',
              holdTime: '',
              holdDay: '',
              holdPlace: '',
              teacherId: 1,
              coursePrice: '8000000'),
          onTabMethod: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => RegisterGradeScreen(),
              ),
            );
          },
        ),
        CourseCard(
          course: Course(
              id: 1,
              classId: 1,
              title: 'نمره دهی برای کلاس 4',
              holdTime: '',
              holdDay: '',
              holdPlace: '',
              teacherId: 1,
              coursePrice: '8000000'),
          onTabMethod: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => RegisterGradeScreen(),
              ),
            );
          },
        ),
        CourseCard(
          course: Course(
              id: 1,
              classId: 1,
              title: 'نمره دهی برای کلاس 5',
              holdTime: '',
              holdDay: '',
              holdPlace: '',
              teacherId: 1,
              coursePrice: '8000000'),
          onTabMethod: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => RegisterGradeScreen(),
              ),
            );
          },
        ),
      ],
    );
  }

  ListView teacherPresenceAbsence(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: 10),
      children: [
        CourseCard(
          course: Course(
              id: 1,
              classId: 1,
              title: 'حضور غیاب برای کلاس A1',
              holdTime: '',
              holdDay: '',
              holdPlace: '',
              teacherId: 1,
              coursePrice: '8000000'),
          onTabMethod: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => PresenceAbsenceScreen(),
              ),
            );
          },
        ),
        CourseCard(
          course: Course(
              id: 1,
              classId: 1,
              title: 'حضور غیاب برای کلاس A1',
              holdTime: '',
              holdDay: '',
              holdPlace: '',
              teacherId: 1,
              coursePrice: '8000000'),
          onTabMethod: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => PresenceAbsenceScreen(),
              ),
            );
          },
        ),
        CourseCard(
          course: Course(
              id: 1,
              classId: 1,
              title: 'حضور غیاب برای کلاس A1',
              holdTime: '',
              holdDay: '',
              holdPlace: '',
              teacherId: 1,
              coursePrice: '8000000'),
          onTabMethod: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => PresenceAbsenceScreen(),
              ),
            );
          },
        ),
        CourseCard(
          course: Course(
              id: 1,
              classId: 1,
              title: 'حضور غیاب برای کلاس A1',
              holdTime: '',
              holdDay: '',
              holdPlace: '',
              teacherId: 1,
              coursePrice: '8000000'),
          onTabMethod: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => PresenceAbsenceScreen(),
              ),
            );
          },
        ),
        CourseCard(
          course: Course(
              id: 1,
              classId: 1,
              title: 'حضور غیاب برای کلاس A1',
              holdTime: '',
              holdDay: '',
              holdPlace: '',
              teacherId: 1,
              coursePrice: '8000000'),
          onTabMethod: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => PresenceAbsenceScreen(),
              ),
            );
          },
        ),
      ],
    );
  }

  ListView teacherCourses(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: 10),
      children: [
        CourseCard(
          course: Course(
              id: 1,
              classId: 1,
              title: 'Java',
              holdTime: '8:00',
              holdDay: 'چهار شنبه',
              holdPlace: 'A1',
              teacherId: 1,
              coursePrice: '8000000'),
          onTabMethod: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => TeacherCourseDetailsScreen(),
              ),
            );
          },
        ),
        CourseCard(
          course: Course(
              id: 1,
              classId: 1,
              title: 'Java',
              holdTime: '8:00',
              holdDay: 'چهار شنبه',
              holdPlace: 'A1',
              teacherId: 1,
              coursePrice: '8000000'),
          onTabMethod: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => TeacherCourseDetailsScreen(),
              ),
            );
          },
        ),
        CourseCard(
          course: Course(
              id: 1,
              classId: 1,
              title: 'Java',
              holdTime: '8:00',
              holdDay: 'چهار شنبه',
              holdPlace: 'A1',
              teacherId: 1,
              coursePrice: '8000000'),
          onTabMethod: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => TeacherCourseDetailsScreen(),
              ),
            );
          },
        ),
        CourseCard(
          course: Course(
              id: 1,
              classId: 1,
              title: 'Java',
              holdTime: '8:00',
              holdDay: 'چهار شنبه',
              holdPlace: 'A1',
              teacherId: 1,
              coursePrice: '8000000'),
          onTabMethod: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => TeacherCourseDetailsScreen(),
              ),
            );
          },
        )
      ],
    );
  }

  Row CourseTabs(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            context.read<TeacherBloc>().add(TeacherSelectionEvent(1));
          },
          child: Container(
            width: 100,
            height: 40,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
        SizedBox(
          width: 30,
        ),
        GestureDetector(
          onTap: () {
            context.read<TeacherBloc>().add(TeacherSelectionEvent(2));
          },
          child: Container(
            width: 100,
            height: 40,
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
        SizedBox(
          width: 30,
        ),
        GestureDetector(
          onTap: () {
            context.read<TeacherBloc>().add(TeacherSelectionEvent(3));
          },
          child: Container(
            width: 100,
            height: 40,
            decoration: BoxDecoration(
              color: Colors.purple,
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
      ],
    );
  }

  Column Info() {
    return Column(
      children: [
        const SizedBox(
          height: 30,
        ),
        Container(
          width: 300,
          height: 140,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.green,
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Row(
              children: [
                Expanded(
                  flex: 8,
                  child: Container(
                    color: Colors.yellow,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text('student.fullName'),
                              const Icon(Icons.abc)
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text('student.phoneNumber'),
                              const Icon(Icons.abc)
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text('student.id.toString()'),
                              const Icon(Icons.abc)
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: 70,
                            height: 20,
                            color: Colors.red,
                            child: Center(
                              child: Text('ویرایش'),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: Container(
                    color: Colors.black,
                    child: Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                          color: Colors.white, shape: BoxShape.circle),
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}

class CourseCard extends StatelessWidget {
  CourseCard({
    required this.course,
    required this.onTabMethod,
    super.key,
  });

  Course course;
  VoidCallback? onTabMethod;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20),
      child: Container(
        width: 310,
        height: 120,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(blurRadius: 10, spreadRadius: 1, color: Colors.black)
            ]),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Column(
            children: [
              Expanded(
                flex: 9,
                child: Container(
                  color: Colors.yellow,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(course.title),
                              SizedBox(
                                height: 5,
                              ),
                              Text(course.holdTime)
                            ],
                          )),
                      Container(
                        width: 100,
                        height: 100,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                    color: Colors.green,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Padding(
                            padding: EdgeInsets.all(5),
                            child: GestureDetector(
                              onTap: onTabMethod,
                              child: Container(
                                width: 90,
                                height: 40,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.black,
                                ),
                              ),
                            ))
                      ],
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
