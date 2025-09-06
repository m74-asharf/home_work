/** Q5. Multiplication Table with Sum - Ask the user for a number. - Print its multiplication table up to
 10, then calculate the sum of all results. */


import 'dart:io';

void main() {
  print('Enter a number: ');
  int n = int.parse(stdin.readLineSync()!);

  int sum = 0;

  print('Multiplication Table of $n:');
  for (int i = 1; i <= 10; i++) {
    int result = n * i;
    print(result);
    sum += result;
  }

  print(sum);
}
