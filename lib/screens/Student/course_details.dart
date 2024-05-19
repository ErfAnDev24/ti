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
              padding: const EdgeInsets.only(top: 40),
              child: Text(
                course?.title ?? '',
                style: const TextStyle(
                    fontFamily: 'Vazir',
                    fontSize: 25,
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
                          width: 100,
                          height: 40,
                          decoration: BoxDecoration(
                            color:
                                (state.courseHoldDays![index] == state.holdDay)
                                    ? ColorManager.purple
                                    : Colors.white,
                            border: Border.all(
                                width: 2,
                                color: state.holdDay == state.courseHoldDays
                                    ? Colors.white
                                    : ColorManager.purple),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Center(
                            child: Text(
                              state.courseHoldDays![index],
                              style: TextStyle(
                                  color: state.holdDay ==
                                          state.courseHoldDays![index]
                                      ? Colors.white
                                      : ColorManager.purple,
                                  fontFamily: 'Vazir',
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
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
                children: [
                  Text(
                    ': زمان کلاس ها',
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
                  mainAxisAlignment: MainAxisAlignment.center,
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
                          height: 40,
                          margin: const EdgeInsets.symmetric(horizontal: 20),
                          decoration: BoxDecoration(
                            color: (state.courseHoldDates?[index] ==
                                    state.holdTime)
                                ? ColorManager.purple
                                : Colors.white,
                            border: Border.all(
                                width: 2,
                                color: state.holdTime == state.courseHoldDates
                                    ? Colors.white
                                    : ColorManager.purple),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Center(
                            child: Text(
                              state.courseHoldDates![index],
                              style: TextStyle(
                                  color: state.holdTime ==
                                          state.courseHoldDates![index]
                                      ? Colors.white
                                      : ColorManager.purple,
                                  fontFamily: 'Mvazir',
                                  fontSize: 18),
                            ),
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
                  borderRadius: BorderRadius.circular(10),
                  color: ColorManager.purple),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        course?.coursePrice ?? '',
                        style: const TextStyle(
                            fontFamily: 'Mvazir',
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        'تعرفه دوره',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      )
                    ],
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 70,
                    width: 160,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Text(
                        'خرید دوره',
                        style: TextStyle(
                            fontFamily: 'Vazir',
                            color: ColorManager.purple,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
