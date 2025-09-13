/**Q1 Create a class City with attributes name and population. In main(), create two city objects and
 print their details. */

class City {
  String name;
  int population;

  City(this.name, this.population);

  void printDetails() {
    print('City : $name, Population : $population');
  }
}

void main() {
  City city1 = City('Cairo', 10000000);
  City city2 = City('Tanta', 5000000);

  city1.printDetails();
  city2.printDetails();
}
