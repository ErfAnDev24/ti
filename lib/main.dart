import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ti/DI/ServiceLocator.dart';
import 'package:ti/data/Models/Student.dart';
import 'package:ti/screens/Manager/manager_screen.dart';
import 'package:ti/screens/Student/bloc/studentBloc.dart';
import 'package:ti/screens/Student/studentScreen.dart';
import 'package:ti/screens/Teacher/bloc/teacher_bloc.dart';
import 'package:ti/screens/Teacher/teacher_screen.dart';
import 'package:ti/screens/home_screen.dart';

void main() async {
  initLocators();
  runApp(Application());
}

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomeScreen()
        // home: BlocProvider(
        //   create: (context) => locator.get<StudentBloc>(),
        //   child: StudentScreen(
        //     student: Student(
        //         fullName: 'ساتیا رضاپور',
        //         password: '1234',
        //         studentCourse: [1, 2, 4],
        //         phoneNumber: '09300000009',
        //         id: 1),
        //   ),
        // ),
        );
  }
}
