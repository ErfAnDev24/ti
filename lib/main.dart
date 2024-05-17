import 'package:flutter/material.dart';
import 'package:ti/DI/ServiceLocator.dart';

import 'package:ti/screens/home_screen.dart';

void main() async {
  initLocators();
  runApp(const Application());
}

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: HomeScreen());
  }
}
