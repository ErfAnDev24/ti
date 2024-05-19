import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ti/DI/ServiceLocator.dart';
import 'package:ti/constants/color_manager.dart';
import 'package:ti/data/Models/Course.dart';
import 'package:ti/data/Models/CourseName.dart';
import 'package:ti/data/Models/Student.dart';
import 'package:ti/data/staticData.dart';
import 'package:ti/screens/Manager/payment_management.dart';
import 'package:ti/screens/Manager/register_course.dart';
import 'package:ti/screens/Manager/register_student.dart';
import 'package:ti/screens/Student/bloc/studentBloc.dart';
import 'package:ti/screens/Student/bloc/studentEvent.dart';
import 'package:ti/screens/Student/bloc/studentState.dart';
import 'package:ti/screens/Student/course_details.dart';

class ManagerScreen extends StatelessWidget {
  ManagerScreen({super.key});

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
                  height: 40,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: MediaQuery.of(context).size.height * 0.6,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const RegisterCourse(),
                            ),
                          );
                        },
                        child: Container(
                          width: 300,
                          height: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: ColorManager.purple),
                          child: const Center(
                            child: Text(
                              'ثبت دوره',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Vazir',
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const RegisterStudent(),
                            ),
                          );
                        },
                        child: Container(
                          width: 300,
                          height: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: ColorManager.purple),
                          child: const Center(
                            child: Text(
                              'ثبت نام دانش آموز',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Vazir',
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => PeymentMangement(),
                            ),
                          );
                        },
                        child: Container(
                          width: 300,
                          height: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: ColorManager.purple),
                          child: const Center(
                            child: Text(
                              'مدیریت پرداخت',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Vazir',
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
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
