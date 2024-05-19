import 'package:flutter/material.dart';
import 'package:ti/constants/color_manager.dart';

class RegisterGradeScreen extends StatelessWidget {
  const RegisterGradeScreen({super.key});

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
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.8,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      width: double.infinity,
                    ),
                    Grade(context, 'عرفان پزشک پور'),
                    Grade(context, 'محمد محمدی'),
                    Grade(context, 'حسین حسینی'),
                    Grade(context, 'سعید عزتی'),
                    Grade(context, 'محسن حسنی'),
                    Grade(context, 'علی اکبری'),
                    Grade(context, 'جواد صانعی'),
                  ],
                ),
              ),
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: GestureDetector(
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
          ),
        ],
      ),
    );
  }

  Padding Grade(BuildContext context, String name) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.9,
        height: 100,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            boxShadow: const [BoxShadow(blurRadius: 7, color: Colors.black)]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: ColorManager.purple,
                  foregroundColor: Colors.white),
              child: const Text(
                'ثبت',
                style: TextStyle(fontFamily: 'Vazir'),
              ),
            ),
            SizedBox(
              width: 50,
              child: TextField(
                cursorColor: ColorManager.purple,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(width: 2, color: ColorManager.purple),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(8),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(width: 2, color: ColorManager.purple),
                  ),
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  labelStyle: TextStyle(
                      color: ColorManager.purple, fontFamily: 'vazir'),
                ),
              ),
            ),
            Text(
              'ثبت نمره برای $name',
              style: const TextStyle(fontFamily: 'Vazir'),
            ),
          ],
        ),
      ),
    );
  }
}
