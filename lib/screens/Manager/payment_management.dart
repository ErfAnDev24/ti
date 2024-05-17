import 'package:flutter/material.dart';
import 'package:ti/constants/color_manager.dart';

class PeymentMangement extends StatelessWidget {
  const PeymentMangement({super.key});

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
          children: [
            Container(
              width: double.infinity,
              height: 100,
              color: Colors.red,
            ),
            Container(
              height: 500,
              child: SingleChildScrollView(
                  child: Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: 80,
                    color: Colors.yellow,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: 80,
                    color: Colors.yellow,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: 80,
                    color: Colors.yellow,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: 80,
                    color: Colors.yellow,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: 80,
                    color: Colors.yellow,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: 80,
                    color: Colors.yellow,
                  ),
                ],
              )),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              height: 80,
              color: Colors.red,
            ),
          ],
        ));
  }
}
