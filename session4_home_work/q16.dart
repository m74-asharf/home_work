/**Write a Dart program that evaluates three integer variables with different logical and comparison
 expressions. Print the results, then decide whether to print 'Rule passed' or 'Rule failed' based on
 one of the expressions. */

void main() {
  int a = 90;
  int b = 60;
  int c = 70;

  bool expression1 = a > b; // true
  bool expression2 = a >= c; // true
  bool expression3 = b > c; // false

  bool logic1 = expression1 && expression2; // true
  bool logic2 = !(c > b); // false
  bool logic3 = expression2 || expression3; // true

  print('expr1 (a > b): $expression1');
  print('expr2 (a >= c): $expression2');
  print('expr1 (a > c): $expression3');

  print('logic1 (a > b): $logic1');
  print('logic2 !(c > b): $logic2');
  print('logic3 (a > c && b > c): $logic3');

  if (logic2) {
    print('Rule passed');
  } else {
    print('Rule failed');
  }
}
