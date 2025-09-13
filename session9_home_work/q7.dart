/**Q7 Ask the user for a number (e.g., 9875). Keep summing its digits until the result is a single digit.
 Print the final single-digit result. (Example: 9+8+7+5 = 29 → 2+9 = 11 → 1+1 = 2) */

import 'dart:io';

int digitalRoot(int number) {
  if (number == 0) {
    return 0;
  } else if (number % 9 == 0) {
    return 9;
  } else {
    return number % 9;
  }
}

void main() {
  print('Enter a number: ');
  int number = int.parse(stdin.readLineSync()!);

  print('result: ${digitalRoot(number)}');
}

