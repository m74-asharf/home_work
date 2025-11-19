import 'package:flutter/material.dart';
import 'package:quiz_app2/widgets/custom_background.dart';

class ResultQuizPage extends StatelessWidget {
  const ResultQuizPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff060B26),
      body: CustomBackground(
        child: Padding(
          padding: const EdgeInsets.all(130),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'your result is:',
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
              Text(
                '3 / 4',
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
