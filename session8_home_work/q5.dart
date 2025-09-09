/** Q5. Find Second Largest Number - Ask the user to enter 6 numbers in a list. - Print the largest
 number and the second largest number (without sorting the list) */

import 'dart:io';

void main() {
  List<int> numbers = [];

  for (int i = 1; i <= 6; i++) {
    stdout.write('Enter number ${i}:');
    int number = int.parse(stdin.readLineSync()!);
    numbers.add(number);
  }

  int largest = numbers[0];
  int secondLargest = numbers[0];

  for (int i = 1; i < numbers.length; i++) {
    if (numbers[i] > largest) {
      secondLargest = largest;
    } else if (numbers[i] > secondLargest && numbers[i] != largest) {
      secondLargest = numbers[i];
    }
  }
  print('Largest : $largest');
  print('Second Largest : $secondLargest');
}
