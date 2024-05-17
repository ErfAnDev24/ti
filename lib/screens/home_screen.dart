import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ti/DI/ServiceLocator.dart';
import 'package:ti/constants/color_manager.dart';
import 'package:ti/data/Models/Student.dart';
import 'package:ti/screens/Manager/manager_screen.dart';
import 'package:ti/screens/Student/bloc/studentBloc.dart';
import 'package:ti/screens/Student/studentScreen.dart';
import 'package:ti/screens/Teacher/bloc/teacher_bloc.dart';
import 'package:ti/screens/Teacher/teacher_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.purple,
      body: Center(
        child: Stack(alignment: Alignment.center, children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                  width: 300,
                  height: 200,
                  child: Image(
                    image: AssetImage('images/3.png'),
                    fit: BoxFit.cover,
                  )),
              const SizedBox(
                height: 50,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => BlocProvider(
                        create: (context) => StudentBloc(),
                        child: BlocProvider(
                          create: (context) => locator.get<StudentBloc>(),
                          child: StudentScreen(
                            student: Student(
                                fullName: 'عرفان پزشک پور',
                                password: '1234',
                                studentCourse: [1, 2, 4],
                                phoneNumber: '09300000009',
                                id: 1),
                          ),
                        ),
                      ),
                    ),
                  );
                },
                child: Container(
                  width: 250,
                  height: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  child: const Center(
                    child: Text(
                      'ورود دانش آموز',
                      style: TextStyle(
                        fontFamily: 'Vazir',
                        fontSize: 25,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => BlocProvider(
                        create: (context) => TeacherBloc(),
                        child: const TeacherScreen(),
                      ),
                    ),
                  );
                },
                child: Container(
                  width: 250,
                  height: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  child: const Center(
                    child: Text(
                      'ورود استاد',
                      style: TextStyle(
                        fontFamily: 'Vazir',
                        fontSize: 25,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => ManagerScreen(),
                    ),
                  );
                },
                child: Container(
                  width: 250,
                  height: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  child: const Center(
                    child: Text(
                      'ورود مدیر',
                      style: TextStyle(
                        fontFamily: 'Vazir',
                        fontSize: 25,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          )
        ]),
      ),
    );
  }
}
