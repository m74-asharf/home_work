import 'package:flutter/material.dart';
import 'package:quiz_app2/widgets/question_widget.dart';

class QuestionModel {
  final List<String> answers = [];
  final String title;

  QuestionModel({required this.title, required List<String> answers}) {
    this.answers.addAll(answers);
  }
}
List<QuestionModel> questionsList = [
  QuestionModel(
    title:'What is Flutter primarily used for?',
    answers: ['Mobile and web UI development', 'Backend web development', 'Database management', 'Operating system design'],
  ),
  QuestionModel(
    title: 'Which programming language is used to build Flutter apps?',
    answers: ['Dart', 'Kotlin', 'Swift', 'JavaScript'],
  ),
  QuestionModel(
    title: 'Which widget is used to make scrollable lists in Flutter?',
    answers: ['GridView', 'ListView', 'Column', 'Stack'],
  ),
  QuestionModel(
    title: 'Which widget is used to create layouts in Flutter?',
    answers: ['Column', 'Scaffold', 'MaterialApp', 'Icon'],
  ),
];
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
