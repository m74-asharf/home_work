/**Write a Dart program that removes duplicate items from a list using a Set. Compare the unique
 count with the original list length and print a message if duplicates were removed. */

void main() {
  List<int> numbers = [1, 2, 2, 3, 4, 4];

  Set<int> uniqeNumbers = numbers.toSet();

  print(numbers);
  print(uniqeNumbers);

  if (numbers.length > uniqeNumbers.length) {
    print('Dublicates were removed');
  } else {
    print('No dublicates found');
  }
}
