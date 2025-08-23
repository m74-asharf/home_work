/**Write a Dart program that applies discounts to a price. Use nested if/else to apply different
 discounts based on whether the user is a student, has a coupon, or if the price is above a threshold.
 Print the final price. */

void main() {
  double price = 100;
  bool isStudent = true;
  bool hasCoupon = false;
  double? discount;

  if (isStudent) {
    discount = 0.2;
    price = price * (1 - discount);
    if (hasCoupon) {
      discount = 0.4;
      price = price * (1 - discount);
    }
    if (price > 2000) {
      discount = 0.1;
      price = price * (1 - discount);
    }
  }
  print(price);
}
