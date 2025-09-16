/** Q4
 Create a class Product with private fields _name and _price.
 - Reject empty names and negative prices in setters.
 - Add a computed getter discountedPrice that returns the price with a 10% discount applied.
 - In main(), demonstrate setting values and printing the original and discounted price. */

class Product {
  String _name = '';
  double _price = 0;

  String get name => _name;
  double get price => _price;

  set name(String value) {
    if (value.trim().isEmpty) {
      print('Invalid name');
    } else {
      _name = value;
    }
  }
  set price(double value) {
    if (value < 0) {
      print('Invalid price');
    } else {
      _price = value;
    }
  }

  double get discountedPrice => _price * 0.90;
}

void main() {
  Product p = Product();

  p.name = "Laptop";
  p.price = 1500;

  print('Product: ${p.name}');
  print('Original Price: ${p.price}');
  print('Discounted Price: ${p.discountedPrice}');

  p.name = "";
  p.price = -200;
}
