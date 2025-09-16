/** Q3
 Create a class Grade with a private field _score.
 - The setter should only accept values 0–100, otherwise print 'Invalid score'.
 - Add a getter and a computed getter isPass that returns true if score ≥ 50.
 - In main(), demonstrate updating the score multiple times and printing results */


class Grade {
  int _score = 0;

  int get score => _score;

  set score(int value) {
    if (value < 0 || value > 100) {
      print('Invalid score');
    } else {
      _score = value;
    }
  }
  bool get isPass => _score >= 50;
}
void main() {
  Grade grade = Grade();
  grade.score = 85;
  print('Score: ${grade.score}, Pass: ${grade.isPass}');

  grade.score = 40;
  print('Score: ${grade.score}, Pass: ${grade.isPass}');

  grade.score = -10; 
  print('Score: ${grade.score}, Pass: ${grade.isPass}');

  grade.score = 120; 
  print('Score: ${grade.score}, Pass: ${grade.isPass}');
}