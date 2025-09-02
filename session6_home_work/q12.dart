/**Create a function that takes named parameters firstName, lastName, and an optional named
 parameter age. Print the full name and, if age is provided, also print 'Age: X' */



void main() {
  printUserInfo(firstName: 'Mohamed', lastName: 'Ashraf', age: 21);
  printUserInfo(firstName: 'Tharwt', lastName: 'Samy');
}

void printUserInfo(
    {required String firstName, required String lastName, int? age}) {
  print(firstName + ' ' + lastName);
  if (age != null) {
    print(age);
  }
}
