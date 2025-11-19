import 'package:flutter/material.dart';
import 'package:quiz_app/widgets/custom_background.dart';
import 'package:quiz_app/widgets/question_items.dart';
import 'package:quiz_app/widgets/question_number_widget.dart';

class QuizPageBody extends StatelessWidget {
  const QuizPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackground(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            QuestionNumberWidget(text: 'Question 1'),
            SizedBox(height: 16),
            QuestionItem(),
          ],
        ),
      ),
    );
  }
}

