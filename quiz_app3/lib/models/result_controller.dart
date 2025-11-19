import 'package:quiz_app3/models/quiz_manager.dart';

class ResultController {
  final QuizManager quizManager;

  ResultController(this.quizManager);

  int calculateTotalScore() {
    return quizManager.calulateTotalScore().toInt();
  }

  double calculatePercentage() {
    if (quizManager.questions.isEmpty) return 0.0;

    final correct = quizManager.calculateCorrectAnwser();
    return (correct / quizManager.questions.length) * 100;
  }

  String getResultMessage(double percentage) {
    if (percentage >= 90) return 'Excellent work!';
    if (percentage >= 70) return 'Good job!';
    if (percentage >= 50) return 'You passed!';
    return 'Better luck next time!';
  }
}
