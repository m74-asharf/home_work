/**Create a Dart program that safely reads a phone number from a map. If the phone number is null,
 print a default message. Then update the phone number and print its length. */

void main() {
  Map<String, dynamic> data = {'phoneNumber': null};

  String? phoneNumber = data['phoneNumber'];
  if (phoneNumber == null) {
    print('phone number is null');
    data['phoneNumber'] = '01287184655';
    print(data['phoneNumber'].toString().length);
  }
}
