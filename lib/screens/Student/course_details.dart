import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ti/constants/color_manager.dart';
import 'package:ti/data/Models/Course.dart';
import 'package:ti/data/staticData.dart';
import 'package:ti/screens/Student/bloc/studentBloc.dart';
import 'package:ti/screens/Student/bloc/studentEvent.dart';
import 'package:ti/screens/Student/bloc/studentState.dart';

class CourseDetails extends StatelessWidget {
  CourseDetails({super.key, required this.course});

  Course? course;

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
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text(
                course?.title ?? '',
                style: const TextStyle(
                    fontFamily: 'Vazir',
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                  child: Text(
                    ': نام استاد',
                    style: TextStyle(
                        fontFamily: 'Vazir',
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: BlocBuilder<StudentBloc, StudentState>(
                builder: (context, state) {
                  return Text(
                    state.teahcer?.fullName ?? '',
                    style: const TextStyle(
                        fontFamily: 'Vazir',
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  );
                },
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    ': روز کلاس ها',
                    style: TextStyle(
                        fontFamily: 'Vazir',
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            BlocBuilder<StudentBloc, StudentState>(
              builder: (context, state) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: List.generate(
                    state.courseHoldDays?.length ?? 0,
                    (index) {
                      return GestureDetector(
                        onTap: () async {
                          context.read<StudentBloc>().add(
                                SelectDayEvent(
                                    holdDay:
                                        state.courseHoldDays?[index] ?? ''),
                              );
                        },
                        child: Container(
                          width: 150,
                          height: 50,
                          decoration: BoxDecoration(
                            color:
                                (state.courseHoldDays![index] == state.holdDay)
                                    ? ColorManager.purple
                                    : Colors.white,
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      );
                    },
                  ),
                );
              },
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [Text('زمان کلاس ها')],
              ),
            ),
            BlocBuilder<StudentBloc, StudentState>(
              builder: (context, state) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: List.generate(
                    state.courseHoldDates?.length ?? 0,
                    (index) {
                      return GestureDetector(
                        onTap: () {
                          context.read<StudentBloc>().add(
                                SelectTimeEvent(
                                    holdTime:
                                        state.courseHoldDates?[index] ?? ''),
                              );
                        },
                        child: Container(
                          width: 100,
                          height: 50,
                          decoration: BoxDecoration(
                            color: (state.courseHoldDates?[index] ==
                                    state.holdTime)
                                ? ColorManager.purple
                                : Colors.white,
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      );
                    },
                  ),
                );
              },
            ),
            const SizedBox(
              height: 50,
            ),
            Container(
              width: 300,
              height: 150,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.green),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Text('data'), Text('data')],
                  ),
                  Container(
                      height: 70,
                      width: 120,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: Text('data'),
                      )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
