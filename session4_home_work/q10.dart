/**Create a Dart program that builds a map of country codes. Print the value for 'EG', add a new entry
 'QA': 'Qatar', print the total length, and check if 'JO' exists—if not, print 'Jordan missing'. */

void main() {
  Map<String, String> codes = {
    'EG': 'Egypt',
  };

  print(codes['EG']);

  codes['QA'] = 'Qatar';

  print(codes.length);

  if (!codes.containsKey('JO')) {
    print('Jordan missing');
  }
}
