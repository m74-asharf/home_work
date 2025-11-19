import 'package:flutter/material.dart';
import 'package:quiz_app2/models/methods.dart';
import 'package:quiz_app2/models/question_model.dart' hide questionListGet;
import 'package:quiz_app2/screens/result_quiz_page.dart';
import 'package:quiz_app2/widgets/custom_background.dart';
import 'package:quiz_app2/widgets/custom_next_back_page.dart';

class QuestionsPage extends StatefulWidget {
  const QuestionsPage({super.key});

  @override
  State<QuestionsPage> createState() => _QuestionsPageState();
}

class _QuestionsPageState extends State<QuestionsPage> {
  bool visibleQ1 = true;
  bool visibleQ2 = false;
  bool visibleQ3 = false;
  bool visibleQ4 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff060B26),
      body: CustomBackground(
        child: Padding(
          padding: EdgeInsetsGeometry.symmetric(horizontal: 10, vertical: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Stack(
                children: [
                  if (visibleQ1 == true) questionListGet(questionsList)[0],
                  if (visibleQ2 == true) questionListGet(questionsList)[1],
                  if (visibleQ3 == true) questionListGet(questionsList)[2],
                  if (visibleQ4 == true) questionListGet(questionsList)[3],
                ],
              ),
              CustomNextBackPage(
                backArrow: () {
                  setState(() {
                    if (visibleQ1 == true) {
                      Navigator.pop(context);
                    } else if (visibleQ2 == true) {
                      visibleQ2 = false;
                      visibleQ1 = true;
                    } else if (visibleQ3 == true) {
                      visibleQ3 = false;
                      visibleQ2 = true;
                    } else {
                      visibleQ4 = false;
                      visibleQ3 = true;
                    }
                  });
                },
                nextArrow: () {
                  setState(() {
                    if (visibleQ1 == true) {
                      visibleQ2 = true;
                      visibleQ1 = false;
                    } else if (visibleQ2 == true) {
                      visibleQ2 = false;
                      visibleQ3 = true;
                    } else if (visibleQ3 == true) {
                      visibleQ3 = false;
                      visibleQ4 = true;
                    } else {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ResultQuizPage(),
                        ),
                      );
                    }
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
