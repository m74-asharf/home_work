/**Exercise 2:
 2. a) Declare variables: String country, int year, double weight, bool likesCoding. Assign values.
 b) Print a sentence that includes all values using string interpolation.
 c) Change weight to a different value and print only the updated one. */

void main() {
  String country = 'Egypt';
  int year = 2025;
  double weight = 60.5;
  bool likeCoding = true;

  print(
      'My name is mohamed, i was born in $country, in $year, my weight is $weight, and am I like coding? -$likeCoding.');
  weight = 62;
  print(weight);
}