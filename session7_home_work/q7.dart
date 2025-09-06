/**Q7. Sentence Word Counter - Ask the user for a short sentence. - Print how many words it contains
 and how many characters (excluding spaces). */


import 'dart:io';

void main() {
  print("Enter a short sentence: ");
  String sentence = stdin.readLineSync()!;

  int wordCount = 0;
  int charCount = 0;
  bool inWord = false;

  for (int i = 0; i < sentence.length; i++) {
    String ch = sentence[i];

    if (ch != ' ') {
      charCount++; 

      if (!inWord) {
        wordCount++; 
        inWord = true;
      }
    } else {
      inWord = false; 
    }
  }

  print('Words: $wordCount');
  print('Characters: $charCount');
}

