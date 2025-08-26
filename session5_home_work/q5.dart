// Create a program with the text 'EGP 12.50'. Print only the number 12.50 as a decimal.

void main() {
  String price = 'EGP 12.50';
  String number = price.split(' ')[1];

  double value = double.parse(number);
  print(value);
}
