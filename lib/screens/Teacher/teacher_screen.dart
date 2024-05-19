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
        title: const SizedBox(
          width: 200,
          height: 50,
          child: Image(
            image: AssetImage('images/2.png'),
            fit: BoxFit.cover,
          ),
        ),
        backgroundColor: ColorManager.purple,
        toolbarHeight: 50,
        centerTitle: true,
        foregroundColor: Colors.white,
      ),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: ColorManager.purple,
            child: info(),
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
                const SizedBox(
                  height: 30,
                ),
                CourseTabs(context),
                const SizedBox(
                  height: 40,
                ),
                BlocBuilder<TeacherBloc, TeacherState>(
                  builder: (context, state) {
                    return Container(
                      width: MediaQuery.of(context).size.width * 0.9,
                      height: MediaQuery.of(context).size.height * 0.5,
                      color: Colors.white,
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
      padding: const EdgeInsets.symmetric(horizontal: 10),
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
                builder: (context) => const RegisterGradeScreen(),
              ),
            );
          },
          selectionState: 3,
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
                builder: (context) => const RegisterGradeScreen(),
              ),
            );
          },
          selectionState: 3,
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
          selectionState: 3,
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
          selectionState: 3,
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
                builder: (context) => const RegisterGradeScreen(),
              ),
            );
          },
          selectionState: 3,
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
          selectionState: 2,
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
          selectionState: 2,
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
          selectionState: 2,
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
          selectionState: 2,
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
          selectionState: 2,
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
          selectionState: 1,
        ),
        CourseCard(
          course: Course(
              id: 1,
              classId: 1,
              title: 'Flutter',
              holdTime: '12:00',
              holdDay: 'چهار شنبه',
              holdPlace: 'A2',
              teacherId: 1,
              coursePrice: '8000000'),
          onTabMethod: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => TeacherCourseDetailsScreen(),
              ),
            );
          },
          selectionState: 1,
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
          selectionState: 1,
        ),
        CourseCard(
          course: Course(
              id: 1,
              classId: 1,
              title: 'C++',
              holdTime: '12:00',
              holdDay: 'چهار شنبه',
              holdPlace: 'A3',
              teacherId: 1,
              coursePrice: '8000000'),
          selectionState: 1,
          onTabMethod: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const TeacherCourseDetailsScreen(),
              ),
            );
          },
        )
      ],
    );
  }

  Widget CourseTabs(BuildContext context) {
    return BlocBuilder<TeacherBloc, TeacherState>(
      builder: (context, state) {
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
                  color: state.selectedSection == 1
                      ? ColorManager.purple
                      : Colors.white,
                  border: Border.all(
                    width: 2,
                    color: state.selectedSection == 1
                        ? Colors.white
                        : ColorManager.purple,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Text(
                    'دوره های من',
                    style: TextStyle(
                      fontFamily: 'Vazir',
                      color: state.selectedSection == 1
                          ? Colors.white
                          : ColorManager.purple,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
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
                  color: state.selectedSection == 2
                      ? ColorManager.purple
                      : Colors.white,
                  border: Border.all(
                    width: 2,
                    color: state.selectedSection == 2
                        ? Colors.white
                        : ColorManager.purple,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Text(
                    'حضور غیاب',
                    style: TextStyle(
                      fontFamily: 'Vazir',
                      color: state.selectedSection == 2
                          ? Colors.white
                          : ColorManager.purple,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
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
                  color: state.selectedSection == 3
                      ? ColorManager.purple
                      : Colors.white,
                  border: Border.all(
                    width: 2,
                    color: state.selectedSection == 3
                        ? Colors.white
                        : ColorManager.purple,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Text(
                    'نمره دهی',
                    style: TextStyle(
                      fontFamily: 'Vazir',
                      color: state.selectedSection == 3
                          ? Colors.white
                          : ColorManager.purple,
                    ),
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  Column info() {
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
            color: Colors.white,
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Row(
              children: [
                Expanded(
                  flex: 8,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            const Text(
                              'علیرضا نیکروان',
                              style: TextStyle(fontFamily: 'Vazir'),
                            ),
                            Icon(
                              Icons.account_circle_rounded,
                              color: ColorManager.purple,
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            const Text(
                              '0930XXXXXXX',
                              style: TextStyle(fontFamily: 'Mvazir'),
                            ),
                            Icon(
                              Icons.phone_enabled,
                              color: ColorManager.purple,
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            const Text(
                              '2',
                              style: TextStyle(fontFamily: 'Mvazir'),
                            ),
                            Icon(Icons.insert_emoticon_outlined,
                                color: ColorManager.purple)
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: 70,
                          height: 30,
                          decoration: BoxDecoration(
                              color: ColorManager.purple,
                              borderRadius: BorderRadius.circular(5)),
                          child: const Center(
                            child: Text(
                              'ویرایش',
                              style: TextStyle(
                                  fontFamily: 'Vazir', color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: Container(
                    width: 80,
                    height: 80,
                    decoration: const BoxDecoration(
                        color: Colors.white, shape: BoxShape.circle),
                    child: const Image(image: AssetImage('images/noImage.png')),
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
    required this.selectionState,
    super.key,
  });

  Course course;
  VoidCallback onTabMethod;
  int selectionState;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Container(
        width: 310,
        height: 120,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          boxShadow: const [
            BoxShadow(blurRadius: 6, spreadRadius: 1, color: Colors.black)
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Column(
            children: [
              Expanded(
                flex: 9,
                child: Container(
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      selectionState != 1
                          ? Container()
                          : Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 15),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const Text(
                                    'محل تشکیل کلاس',
                                    style: TextStyle(
                                      fontFamily: 'Vazir',
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    '${course.holdPlace}',
                                    style: const TextStyle(
                                        fontFamily: 'Vazir',
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                      Padding(
                        padding: selectionState == 2 || selectionState == 3
                            ? const EdgeInsets.only(right: 30, top: 20)
                            : const EdgeInsets.only(right: 40, top: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              course.title,
                              style: TextStyle(
                                  fontSize:
                                      selectionState == 2 || selectionState == 3
                                          ? 17
                                          : 20,
                                  fontFamily: 'Vazir',
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              course.holdTime,
                              style: const TextStyle(
                                fontSize: 16,
                                fontFamily: 'Mvazir',
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 100,
                        height: 100,
                        child: Center(
                          child: Image(
                            image: AssetImage('images/2.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              selectionState == 1
                  ? Container()
                  : Expanded(
                      flex: 3,
                      child: Center(
                        child: Container(
                          margin: const EdgeInsets.only(bottom: 1),
                          color: Colors.white,
                          child: Row(
                            children: [
                              const SizedBox(
                                width: 10,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(5),
                                child: GestureDetector(
                                  onTap: onTabMethod,
                                  child: Container(
                                    width: 90,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: ColorManager.purple,
                                    ),
                                    child: const Center(
                                      child: Text(
                                        'مشاهده',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: 'Vazir'),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
