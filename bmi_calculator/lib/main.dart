import 'package:flutter/material.dart';
import 'package:third_project/screens/bmi_screen.dart';

void main() {
  runApp(const BMICalulator());
}

class BMICalulator extends StatelessWidget {
  const BMICalulator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BMIScreen());
  }
}
