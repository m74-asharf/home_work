/** Q2. Class with Constructor - Create a class Car with attributes brand and year. - Add a constructor
 to set the values when creating the object. - In main(), create two car objects with different data and
 print their details. */

class Car {
  String brand;
  int year;

  Car(this.brand, this.year);

  void printDetails() {
    print('brand : $brand, year : $year');
  }
}

void main() {
  Car car1 = Car('BMW', 2012);
  Car car2 = Car('Toyota', 2015);

  car1.printDetails();
  car2.printDetails();
}
