/**Create a program with a map of student names to their marks. Print the name of the student with
 the highest mark. */

void main() {
  Map<String, double> marks = {'Mohamed': 90, 'Ashraf': 85, 'Tharwat': 70};
  String topStudent = marks.keys.first;
  double highestMark = marks[topStudent]!;

  marks.forEach((name, mark) {
    if (mark > highestMark) {
      topStudent = name;
      highestMark = mark;
    }
  });
  print(topStudent);
}
