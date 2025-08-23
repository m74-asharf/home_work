/**Write a Dart program that reads environment variables from a map. If a value is null, replace it with
 a default. Print values in uppercase, and display 'Prod ready' or 'Non-prod' depending on
 conditions. */


void main(){
  Map<String, String?> env = {
    'MODE': 'staging',
    'SERVER': null,           
    'SECRET_KEY': 'abc789',
  };

  String mode = env['MODE'] ?? 'development';
  String server = env['SERVER'] ?? '127.0.0.1';
  String secretKey = env['SECRET_KEY'] ?? 'no-secret';

  mode = mode.toUpperCase();
  server = server.toUpperCase();
  secretKey = secretKey.toUpperCase();

  print('Mode = $mode');
  print('Server = $server');
  print('Secret_KEY = $secretKey');

  if (mode == 'PRODUCTION' && server != '127.0.0.1') {
    print('Prod ready');
  } else {
    print('Non-prod');
  }
}