import 'package:get_it/get_it.dart';
import 'package:ti/screens/Student/bloc/studentBloc.dart';

var locator = GetIt.instance;

Future<void> initLocators() async {
  locator.registerSingleton<StudentBloc>(StudentBloc());
}
