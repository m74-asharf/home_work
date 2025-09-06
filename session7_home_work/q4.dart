/** Simple List Analyzer - Let the user enter 5 numbers into a list. - Print the largest and smallest
 numbers, and then calculate the difference between them. */


import 'dart:io';

void main() {
  List<int> numbers = [];

  for (int i = 1; i <= 5; i++) {
    print("Enter number $i: ");
    int num = int.parse(stdin.readLineSync()!);
    numbers.add(num);
  }

  numbers.sort();

  int smallest = numbers.first;

  int largest = numbers.last;

  int difference = largest - smallest;

  print(numbers);
  print(largest);
  print(smallest);
  print(difference);
}
