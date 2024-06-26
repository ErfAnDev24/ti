import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ti/DI/ServiceLocator.dart';
import 'package:ti/constants/color_manager.dart';
import 'package:ti/data/Models/Course.dart';
import 'package:ti/data/Models/Student.dart';
import 'package:ti/screens/Student/bloc/studentBloc.dart';
import 'package:ti/screens/Student/bloc/studentEvent.dart';
import 'package:ti/screens/Student/bloc/studentState.dart';
import 'package:ti/screens/Student/course_details.dart';

class StudentScreen extends StatelessWidget {
  StudentScreen({super.key, required this.student});

  Student student;

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
      body: BlocBuilder<StudentBloc, StudentState>(
        builder: (context, state) {
          return Stack(
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
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)),
                ),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    CourseTabs(context, state),
                    const SizedBox(
                      height: 40,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.9,
                      height: MediaQuery.of(context).size.height * 0.5,
                      child: ListView.builder(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        itemCount: state.courseList?.length ?? 0,
                        itemBuilder: (context, index) {
                          return CourseCard(course: state.courseList![index]);
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  Row CourseTabs(BuildContext context, StudentState state) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            context.read<StudentBloc>().add(FetchAllCourses());
          },
          child: Container(
            width: 150,
            height: 40,
            decoration: BoxDecoration(
              color: (state is StudentGetAllCourses)
                  ? ColorManager.purple
                  : Colors.white,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                  width: 2,
                  color: (state is StudentGetAllCourses)
                      ? Colors.white
                      : ColorManager.purple),
            ),
            child: Center(
              child: Text(
                'همه دوره ها',
                style: TextStyle(
                    color: (state is StudentGetAllCourses)
                        ? Colors.white
                        : ColorManager.purple,
                    fontFamily: 'Vazir'),
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 30,
        ),
        GestureDetector(
          onTap: () {
            context
                .read<StudentBloc>()
                .add(FetchStudentCourses(student: student));
          },
          child: Container(
            width: 150,
            height: 40,
            decoration: BoxDecoration(
              color: (state is StudentCourseResponse)
                  ? ColorManager.purple
                  : Colors.white,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                  width: 2,
                  color: (state is StudentCourseResponse)
                      ? Colors.white
                      : ColorManager.purple),
            ),
            child: Center(
              child: Text(
                'دوره های من',
                style: TextStyle(
                    color: (state is StudentCourseResponse)
                        ? Colors.white
                        : ColorManager.purple,
                    fontFamily: 'Vazir'),
              ),
            ),
          ),
        ),
      ],
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
                            Text(
                              student.fullName,
                              style: const TextStyle(fontFamily: 'Vazir'),
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
                            Text(
                              student.phoneNumber,
                              style: const TextStyle(fontFamily: 'Mvazir'),
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
                            Text(
                              student.id.toString(),
                              style: const TextStyle(fontFamily: 'Mvazir'),
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
                        )
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
    super.key,
  });

  Course course;

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
                      Padding(
                        padding: const EdgeInsets.only(right: 40, top: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              course.title,
                              style: const TextStyle(
                                  fontSize: 20,
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
              Expanded(
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
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (pageContext) => BlocProvider.value(
                                    value: context.read<StudentBloc>(),
                                    child: CourseDetails(course: course),
                                  ),
                                ),
                              );
                              context.read<StudentBloc>().add(
                                    FetchCourseDetails(
                                        teacherId: course.teacherId,
                                        courseName: course.title),
                                  );
                            },
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
                                      color: Colors.white, fontFamily: 'Vazir'),
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
