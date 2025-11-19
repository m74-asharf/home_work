import 'package:flutter/material.dart';
import 'package:quiz_app/widgets/quiz_page_body.dart';

class QuizPage extends StatelessWidget {
  const QuizPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff060B26),
      body: QuizPageBody(),
    );
  }
}

