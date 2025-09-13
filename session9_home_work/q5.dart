/**Q5 Create a class Course with attributes title and duration (default = 3 months). Create two
 courses: one with custom duration and one with the default. Print both. */

class Course {
  String title;
  String duration;

  Course(this.title, [this.duration = '3 months']);

  void printInfo() {
    print('Course : $title, - Duration : $duration');
  }
}

void main() {
  Course course1 = Course("Flutter");
  Course course2 = Course("Dart", "1 month");

  course1.printInfo();
  course2.printInfo();
}
