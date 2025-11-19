import 'package:flutter/material.dart';
import 'package:quiz_app2/screens/questions_page.dart';
import 'package:quiz_app2/widgets/custom_background.dart';
import 'package:quiz_app2/widgets/custom_button.dart';

class StartQuizPage extends StatelessWidget {
  const StartQuizPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff060B26),
      body: CustomBackground(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 60),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Text(
                'Good morning,',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              Text(
                'New topic is waiting',
                style: TextStyle(fontSize: 26, color: Colors.white),
              ),
              Spacer(),
              Image.asset('assets/home_image.png'),
              Spacer(),
              CustomButton(page: QuestionsPage(), text: 'Start Quiz'),
            ],
          ),
        ),
      ),
    );
  }
}
