/** Q2
 Create a class Car with private fields _brand and _year.
 - Add setters that reject empty brand names and years less than 1886 (first car invention).
 - Add getters for both.
 - In main(), demonstrate creating two car objects (one valid, one invalid input) */

class Car {
  String _brand = '';
  int _year = 0;

  String get brand => _brand;
  int get year => _year;

  set brand(String value) {
    if (value.trim().isEmpty) {
      print('Invalid brand name');
    } else {
      _brand = value;
    }
  }

  set year(int value) {
    if (value < 1886) {
      print('Invalid brand name');
    } else {
      _year = value;
    }
  }
}

void main() {
  Car car1 = Car();
  car1.brand = 'Toyota';
  car1.year = 2020;
  print('Car 1: ${car1.brand}, ${car1.year}');

  Car car2 = Car();
  car2.brand = '';
  car2.year = 1700; 
  print('Car 2: ${car2.brand}, ${car2.year}');
}
