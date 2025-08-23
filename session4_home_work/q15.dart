/** Write a Dart program that simulates a simple router using a switch statement on a string path ('/',
 '/products', '/profile', or other). Handle each case with appropriate output, including maps and null
 safety where needed. */

void main() {
  String? path = '/products';

  switch (path ?? null) {
    case '/':
      print('Home page');
      break;
    case '/products':
      Map<String, double> products = {
        'cycle': 4800,
        'phone': 17000,
      };
      print('Products page');
      products.forEach((product, price) {
        print('$product : $price');
      });
      break;
    case '/profile':
      Map<String, String?> profile = {
        'username': 'mohamed',
        'email': null,
      };
      print('Profile page');
      print('username : ${profile['username']}');
      print('email : ${profile['email']}');
    case 'null':
      print('No path provided');
    default:
      print('Page not founded');
  }
}
