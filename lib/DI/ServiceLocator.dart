import 'package:get_it/get_it.dart';
import 'package:ti/screens/Student/bloc/studentBloc.dart';
import 'package:ti/screens/Teacher/bloc/teacher_bloc.dart';

var locator = GetIt.instance;

Future<void> initLocators() async {
  locator.registerSingleton<StudentBloc>(StudentBloc());

  locator.registerSingleton<TeacherBloc>(TeacherBloc());
}
