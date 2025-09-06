/**Q6. Number Guessing (3 Tries) - Generate a random number between 1 and 20. - Let the user
 guess up to 3 times. If they fail, reveal the correct number */



import 'dart:io';
import 'dart:math';

void main() {
  Random random = Random();
  int number = random.nextInt(20) + 1; 
  int tries = 3;

  print("Guess the number (between 1 and 20):");

  for (int i = 1; i <= tries; i++) {
    print('Try $i: ');
    int guess = int.parse(stdin.readLineSync()!);

    if (guess == number) {
      print('Correct');
      return;
    } else {
      print('Wrong');
    }
  }

  print('you filled.\n The number was $number');
}
