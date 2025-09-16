/**Q7
 Ask the user to input a list of integers.
 - Print the largest number, the smallest number, and their difference.
 - Calculate the average of the list.
 - Print all numbers that are above the average.
 - Finally, print how many numbers are even and how many are odd in the list */

import 'dart:io';

void main() {
  print("Enter integers :");
  String? input = stdin.readLineSync();

  if (input == null || input.trim().isEmpty) {
    print("No input provided!");
    return;
  }

  List<int> numbers = input.split(' ').map(int.parse).toList();

  int maxNum = numbers[0];
  int minNum = numbers[0];
  int sum = 0;
  int evenCount = 0;
  int oddCount = 0;

  for (int n in numbers) {
    if (n > maxNum) {
      maxNum = n;
    }
    ;
    if (n < minNum) {
      minNum = n;
    }
    sum += n;
    if (n % 2 == 0) {
      evenCount++;
    } else {
      oddCount++;
    }
  }

  int diff = maxNum - minNum;
  double avg = sum / numbers.length;

  print("Largest number: $maxNum");
  print("Smallest number: $minNum");
  print("Difference: $diff");
  print("Average: $avg");

  List<int> aboveAvg = [];
  for (int n in numbers) {
    if (n > avg) {
      aboveAvg.add(n);
    }
  }
  print("Numbers above average: $aboveAvg");

  print("Even count: $evenCount, Odd count: $oddCount");
}
