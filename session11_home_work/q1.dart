/**Q1
Design an OOP model for planning trip fuel across multiple vehicle types.
Requirements:
- Provide a general vehicle type with encapsulated core data (private fields) and validated constructors
(invalid → print an error; keep previous values).
- Create at least two specialized vehicle types that inherit from the general type and introduce one
private field each affecting fuel usage, with validation.
- Define a fuel computation method in the general type; specialized types must override it with their own
rule.
- In a mixed collection of vehicles, given a list of trip distances, compute total fuel per vehicle and print
which vehicles cannot complete the route under their own constraints (you define the constraint per
type). */

class Vehicle {
  String _name;
  double _fuelEfficiency;
  double _tankCapacity;

  Vehicle(this._name, this._fuelEfficiency, this._tankCapacity);

  String get name => _name;

  double computeFuel(double distance) {
    return distance / _fuelEfficiency;
  }

  bool canComplete(double distance) {
    return (computeFuel(distance) <= _tankCapacity);
  }
}

class Car extends Vehicle {
  int _passengers;

  Car(String name, double efficiency, double tank, this._passengers)
      : super(name, efficiency, tank) {
    if (_passengers < 0) {
      print('Invalid passengers count');
      _passengers = 0;
    }
  }

  @override
  double computeFuel(double distance) {
    double updateEfficienty = super._fuelEfficiency - 0.2 * _passengers;
    if (updateEfficienty <= 0) {
      updateEfficienty = 0.1;
    }
    return distance / updateEfficienty;
  }
}

class Truck extends Vehicle {
  int _goodsWeight;

  Truck(String name, double efficiency, double tank, this._goodsWeight)
      : super(name, efficiency, tank) {
    if (_goodsWeight < 0) {
      print('Invalid goods weight');
      _goodsWeight = 0;
    }
  }

  @override
  double computeFuel(double distance) {
    double updateEfficienty = super._fuelEfficiency - 0.5 * _goodsWeight;
    if (updateEfficienty <= 0) {
      updateEfficienty = 0.1;
    }
    return distance / updateEfficienty;
  }
}

void main() {
  List<Vehicle> vehicles = [Car('car1', 18, 30, 1), Truck('truck1', 8, 120, 8)];

  List<double> tripDistance = [100, 200];

  for (var vehicle in vehicles) {
    double fuel = 0;
    bool canCompleteAll = true;

    for (var distance in tripDistance) {
      double needed = vehicle.computeFuel(distance);
      fuel += needed;

      if (!vehicle.canComplete(distance)) {
        canCompleteAll = false;
      }
    }
    print('${vehicle.name} total fuel = ${fuel.toStringAsFixed(2)} liters');
    if (!canCompleteAll) {
      print("${vehicle.name} can't complete all trip.");
    }
  }
}