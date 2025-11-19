import 'package:flutter/material.dart';
import 'package:quiz_app3/views/home_view.dart';
import 'package:quiz_app3/views/quiz_view.dart';
import 'package:quiz_app3/widgets/custom_button.dart';

class ResultActions extends StatelessWidget {
  const ResultActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomButton(
          text: 'Back to Home',
          onPressed: () {
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => const HomeView()),
              (route) => false,
            );
          },
        ),
        const SizedBox(height: 16),
        CustomButton(
          text: 'Restart Quiz',
          onPressed: () {
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => const HomeView()),
              (route) => false,
            );

            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const QuizView()),
            );
          },
        ),
      ],
    );
  }
}
