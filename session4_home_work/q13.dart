/**Write a Dart program that calculates a grade (A, B, C, or D) based on a mark. Then use a switch
 statement to print a message for each grade. */

void main() {
  int mark = 95;
  String? grade;

  if (mark > 85) {
    grade = 'A';
  } else if (mark > 75) {
    grade = 'B';
  } else if (mark > 65) {
    grade = 'C';
  } else if (mark > 50) {
    grade = 'D';
  } else {
    grade = 'F';
  }

  switch (grade) {
    case 'A':
      print("Excellent! Keep it up.");
      break;
    case 'B':
      print("Good job! You can aim higher.");
      break;
    case 'C':
      print("Fair effort. Try to improve.");
      break;
    case 'D':
      print("Needs improvement. Don't give up!");
      break;
    default:
      print("Invalid grade.");
  }
}
