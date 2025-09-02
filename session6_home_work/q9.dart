// Create a function that takes two integers as parameters and prints which one is larger

void main() {
  printLarger(5, 7);
}

void printLarger(int a, int b) {
  if (a > b) {
    print('a is larger');
  } else if (b > a) {
    print('b is larger');
  } else {
    print('both are equal');
  }
}
