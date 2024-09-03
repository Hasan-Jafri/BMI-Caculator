import 'package:bmi_calculator/pages/main_page.dart';
import 'package:bmi_calculator/themes/dark_theme.dart';
import 'package:bmi_calculator/themes/light_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightTheme(),
      darkTheme: darkTheme(),
      themeMode: ThemeMode.system,
      title: 'BMI Calculator',
      home: const HomePage(title: "BMI Calculator"),
    );
  }
}
