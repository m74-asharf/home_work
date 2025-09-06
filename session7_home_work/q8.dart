/** Q8. Digits Operations - Ask the user for a number (e.g., 528). - Print the sum of its digits and also
 print the largest digit. */


import 'dart:io';

void main() {
  print('Enter a number: ');
  String number = stdin.readLineSync()!;

  int sum = 0;
  int largest = 0;

  for (int i = 0; i < number.length; i++) {
    int digit = int.parse(number[i]);
    sum += digit;
    if (digit > largest) {
      largest = digit;
    }
  }

  print(sum);
  print(largest);
}
