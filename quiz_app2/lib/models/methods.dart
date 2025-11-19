import 'package:flutter/material.dart';
import 'package:quiz_app2/models/question_model.dart';
import 'package:quiz_app2/widgets/question_widget.dart';

List<Widget> questionListGet(List<QuestionModel> questions) {
  List<Widget> myQuestions = [];
  int i = 1;
  for (var element in questions) {
    myQuestions.add(
      SizedBox(
        width: double.infinity,
        height: 600,
        child: QuestionWidget(questionModel: element, numberOfQuestion: i),
      ),
    );
    i++;
  }
  return myQuestions;
}