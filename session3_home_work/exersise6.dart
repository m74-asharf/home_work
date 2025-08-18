/**Exercise 6:
 6. a) Create List animals with three values.
 b) Add a new animal, remove the last one, and update the second element.
 c) Print animals.first, animals.last, and animals.length. */

void main() {
  List<String> animals = ['cat', 'dog', 'lion'];
  animals.add('donky');   // cat - dog - lion - donky
  animals.removeAt(2);    // cat - dog - donky 
  animals[1] = 'tiger';   // cat - tiger - donky

  print(animals.first);
  print(animals.last);
  print(animals.length);
}
