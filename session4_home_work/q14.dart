/** Write a Dart program that works with a nullable list of integers. If the list is null or empty, print 'No
 scores'. Otherwise, calculate and print the sum of the first and last elements and check if it is
 greater than or equal to 40. */

void main() {
  List<int>? scores = [60 , 80 , 70];

  if (scores.isEmpty) {
    print('No scores');
  } else {
    print(scores.first + scores.last);
    if ((scores.first + scores.last) >= 40) {
      print('The addition is >= 40');
    } else {
      print('The addition is no >= 40');
    }
  }
}
