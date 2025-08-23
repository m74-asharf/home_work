/**Create a Dart program that safely reads a phone number from a map. If the phone number is null,
 print a default message. Then update the phone number and print its length. */

void main() {
  Map<int, String?> phoneNumber = {1: '01211620479', 2: null};

  String? phone = phoneNumber[2];
  if (phone == null) {
    print('Not available');
  } else {
    print(phone);
  }

  phoneNumber[2] = '01287184655';
  String updatePhone = phoneNumber[2]!;
  print(updatePhone);
  print(updatePhone.length);
}
