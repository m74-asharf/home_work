/** Q4. Class with Default Attribute Value - Create a class Product with attributes name and price. 
Give price a default value of 0. - Create two objects: one with a custom price and one with the
 default price. Print their details */

class Product {
  String name;
  double price;

  Product(this.name, {this.price = 0});

  void printDetails() {
    print('product : $name, price : $price');
  }
}

void main() {
  Product product1 = Product('pepsi', price: 20);
  Product product2 = Product('Juice');

  product1.printDetails();
  product2.printDetails();
}
