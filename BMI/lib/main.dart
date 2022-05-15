import 'package:flutter/material.dart';
import 'package:bmi/screens/input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Themes are a easy way to keep a consistent color within your app, and you can customize it further
      // In this case we use the dark theme with a few modifications
      // Note: You can change any widget by wrapping it in a theme by itself
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
        //textTheme: TextTheme(body1: TextStyle(color: Colors.white),
      ),
      home: InputPage(),
    );
  }
}
