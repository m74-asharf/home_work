/**Write a Dart program that formats a price tag string with a currency. Apply string methods such as
 toString, padLeft, and length to format and compare the results. */

void main() {
  double price = 105.5;
  String priceTag = '${price.toString()}';

  String format1 = priceTag.padLeft(10);
  String format2 = priceTag.padLeft(15);
  print(format1);

  int length1 = format1.length;
  int length2 = format2.length;


  if (length1 > length2) {
    print('formatted1 is longer than formatted2');
  } else {
    print('formatted2 is longer or equal');
  }
}
