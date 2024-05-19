import 'package:flutter/material.dart';
import 'package:ti/constants/color_manager.dart';

class RegisterCourse extends StatelessWidget {
  const RegisterCourse({super.key});

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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            width: double.infinity,
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 60),
            child: Text(
              'ثبت دوره',
              style: TextStyle(
                  fontFamily: 'Vazir',
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              cursorColor: ColorManager.purple,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 2, color: ColorManager.purple),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(8),
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 2, color: ColorManager.purple),
                ),
                labelText: 'نام دوره',
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                labelStyle:
                    TextStyle(color: ColorManager.purple, fontFamily: 'vazir'),
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              cursorColor: ColorManager.purple,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 2, color: ColorManager.purple),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(8),
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 2, color: ColorManager.purple),
                ),
                labelText: 'نام استاد',
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                labelStyle:
                    TextStyle(color: ColorManager.purple, fontFamily: 'vazir'),
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              cursorColor: ColorManager.purple,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 2, color: ColorManager.purple),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(8),
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 2, color: ColorManager.purple),
                ),
                labelText: 'قیمت دوره',
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                labelStyle:
                    TextStyle(color: ColorManager.purple, fontFamily: 'vazir'),
              ),
            ),
          ),
          const SizedBox(
            height: 70,
          ),
          Container(
            width: 300,
            height: 60,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: ColorManager.purple),
            child: const Center(
              child: Text(
                'ثبت',
                style: TextStyle(
                    fontFamily: 'Vazir', color: Colors.white, fontSize: 25),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Container(
              width: 300,
              height: 60,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: ColorManager.purple),
              child: const Center(
                child: Text(
                  'بازگشت',
                  style: TextStyle(
                      fontFamily: 'Vazir', color: Colors.white, fontSize: 25),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
