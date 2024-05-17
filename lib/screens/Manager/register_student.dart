import 'package:flutter/material.dart';
import 'package:ti/constants/color_manager.dart';

class RegisterStudent extends StatelessWidget {
  const RegisterStudent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          width: 100,
          height: 50,
          child: const Image(
            image: AssetImage('images/Startlogo.png'),
            fit: BoxFit.contain,
          ),
        ),
        backgroundColor: ColorManager.purple,
        toolbarHeight: 50,
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            width: double.infinity,
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
                labelText: 'نام دانش آموز',
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
                labelText: 'شماره موبایل',
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                labelStyle:
                    TextStyle(color: ColorManager.purple, fontFamily: 'vazir'),
              ),
            ),
          ),
          SizedBox(
            height: 70,
          ),
          Container(
            width: 300,
            height: 60,
            color: Colors.red,
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: 300,
            height: 60,
            color: Colors.red,
          )
        ],
      ),
    );
  }
}
