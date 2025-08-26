/**Write a Dart program that applies discounts to a price. Use nested if/else to apply different
 discounts based on whether the user is a student, has a coupon, or if the price is above a threshold.
 Print the final price. */

void main() {
  double price = 100;
  double? finalPrice;
  bool isStudent = true;
  bool hasCoupon = false;
  double? discount;

  if (isStudent) {
    discount = 0.5;
    finalPrice = price * (1 - discount);
    print(finalPrice);
  } else if (hasCoupon) {
    discount = 0.2;
    finalPrice = price * (1 - discount);
    print(finalPrice);
  } else {
    print(finalPrice);
  }
}
