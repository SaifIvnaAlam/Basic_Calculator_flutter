import 'package:flutter/material.dart';
import 'package:image_app/asstes.dart';
import 'package:image_app/calculator_page.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CalculatorPage(),
    );
  }
}
