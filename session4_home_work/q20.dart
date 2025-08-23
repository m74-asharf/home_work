/** Write a Dart program that checks access rules for a ticket gate. If the user is under 18, check if they
 have a parent. Use a switch statement on an area variable (general or restricted) to decide what
 message to print */



  void main() {
  int age = 15;
  bool hasParent = true;
  String area = 'restricted'; 

  if (age < 18) {
    if (!hasParent) {
      print('Access denied: Under 18 and no parent.');
      return; 
    } else {
      print('Under 18 but accompanied by parent.');
    }
  } else {
    print('Adult user, no parent required.');
  }

  switch (area) {
    case 'general':
      print('Access granted to General Area.');
      break;

    case 'restricted':
      if (age >= 18) {
        print('Access granted to Restricted Area.');
      } else {
        print('Access denied: Restricted Area requires +18.');
      }
      break;

    default:
      print('Unknown area. Please check your ticket.');
  }
}
