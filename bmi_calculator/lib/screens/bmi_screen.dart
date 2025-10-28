import 'package:flutter/material.dart';
import 'package:third_project/components/bottom_button.dart';
import 'package:third_project/components/gender_card.dart';
import 'package:third_project/components/height_card.dart';
import 'package:third_project/components/weight_age_card.dart';
import 'package:third_project/screens/result_screen.dart';

class BMIScreen extends StatefulWidget {
  const BMIScreen({super.key});

  @override
  State<BMIScreen> createState() => _BMIScreenState();
}

class _BMIScreenState extends State<BMIScreen> {
  bool isMale = true;
  double height = 174;
  int weight = 60;
  int age = 29;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('BMI CALCULATOR', style: TextStyle(color: Colors.white)),
        backgroundColor: Color(0xff0a0e21),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: 16),
          Row(
            children: [
              GenderCard(
                icon: Icons.male,
                label: 'MALE',
                isSelected: isMale,
                onTap: () => setState(() => isMale = true),
              ),
              GenderCard(
                icon: Icons.female,
                label: 'FEMALE',
                isSelected: !isMale,
                onTap: () => setState(() => isMale = false),
              ),
            ],
          ),
          HeightCard(
            height: height,
            onChanged: (value) => setState(() => height = value),
          ),
          Row(
            children: [
              WeightAgeCard(
                label: 'WEIGHT',
                value: weight,
                onIncrement: () => setState(() => weight++),
                onDecrement: () => setState(() => weight--),
              ),
              WeightAgeCard(
                label: 'AGE',
                value: age,
                onIncrement: () => setState(() => age++),
                onDecrement: () => setState(() => age--),
              ),
            ],
          ),
          BottomButton(
            title: 'CALCULATE',
            onTap: () {
              double bmi = weight / ((height / 100) * (height / 100));
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ResultSreen(bmi: bmi)),
              );
            },
          ),
        ],
      ),
    );
  }
}
