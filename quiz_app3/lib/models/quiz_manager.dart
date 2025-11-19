import 'package:quiz_app3/assets.dart';
import 'package:quiz_app3/models/question_model.dart';

class QuizManager {
  final List<QuestionModel> _questions = [
    QuestionModel(
      title: 'What is the capital of France?',
      questionNumber: '1',
      options: ['London', 'Paris', 'Berlin', 'Madrid'],
      image: Assets.q1,
      correctAnwser: 'Paris',
    ),
    QuestionModel(
      title: 'What is the capital of Germany?',
      questionNumber: '2',
      options: ['Berlin', 'London', 'Madrid', 'Paris'],
      image: Assets.q2,
      correctAnwser: 'Berlin',
    ),
    QuestionModel(
      title: 'What is the capital of Italy?',
      questionNumber: '3',
      options: ['Naples', 'Milan', 'Rome', 'Turin'],
      image: Assets.q3,
      correctAnwser: 'Rome',
    ),
    QuestionModel(
      title: 'What is the capital of Spain?',
      questionNumber: '4',
      options: ['Seville', 'Barcelona', 'Valencia', 'Madrid'],
      image: Assets.q4,
      correctAnwser: 'Madrid',
    ),
  ];
  List<QuestionModel> get questions => _questions;

  void updateSelectedAnswer(QuestionModel question, String answer) {
    question.selectedAnswer = answer;
  }

  num calculateCorrectAnwser() {
    return _questions
        .where((question) => question.selectedAnswer == question.correctAnwser)
        .length;
  }

  num calulateTotalScore() {
    return calculateCorrectAnwser();
  }
}
