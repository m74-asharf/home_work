import 'package:flutter/material.dart';
import 'package:quiz_app/screens/quiz_page.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const QuizPage()) 
          );
        },
        child: const Text('Start Quiz',
        style: TextStyle(fontSize: 18,
        color: Color(0xff2B0063),
        fontWeight: FontWeight.w500),),
      ),
    );
  }
}