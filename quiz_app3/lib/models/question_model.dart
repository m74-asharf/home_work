class QuestionModel {
  final String title;
  final String questionNumber;
  final List<String> options;
  final String image;
  String selectedAnswer = '';
  final String correctAnwser;

  QuestionModel({
    required this.title,
    required this.correctAnwser,
    required this.questionNumber,
    required this.options,
    required this.image,
  });

  bool isCorrectAnswer(String answer) {
    return answer == correctAnwser;
  }
}
