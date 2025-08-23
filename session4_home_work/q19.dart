/**Write a Dart program that converts a list of names to a set of unique values. Create a map with
 counts of occurrences. Compare lengths and print a message if a specific name appears more than
 once. */

void main() {
  List<String> names = ['mohamed', 'ashraf', 'tharwat', 'mohamed', 'mohamed'];
  Set<String> uniqueNames = names.toSet();

  Map<String, int> nameCounts = {};
  for (var name in names) {
    nameCounts[name] = (nameCounts[name] ?? 0) + 1;
  }

  print('Original list: $names');
  print('Unique names: $uniqueNames');
  print('Name counts: $nameCounts');

  print('Original length: ${names.length}');
  print('Unique length: ${uniqueNames.length}');

  if (names.length > uniqueNames.length) {
    print('There are duplicate names in the list.');
  } else {
    print('All names are unique.');
  }

  String checkName = 'mohamed';
  if ((nameCounts[checkName] ?? 0) > 1) {
    print('The name "$checkName" appears more than once.');
  } else {
    print('The name "$checkName" is unique.');
  }
}
