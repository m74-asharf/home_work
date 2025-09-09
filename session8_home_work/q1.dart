/** Q1. Class with Method - Create a class Calculator with two attributes: num1 and num2. - Add a
 method addNumbers() that prints the sum of the two numbers. - Create an object in main() and call
 the method */

class Calculator {
  int num1;
  int num2;

  Calculator(this.num1, this.num2);

  void addNumbers() {
    int sum = num1 + num2;
    print('Sum = $sum');
  }
}

void main() {
  Calculator calculator = Calculator(5, 10);

  calculator.addNumbers();
}
