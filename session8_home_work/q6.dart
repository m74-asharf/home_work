/** Q6. Sentence Analyzer - Ask the user to input a sentence. - Print how many words it contains. 
Then print the shortest word and the longest word from the sentence */


import 'dart:io';

void main() {
  stdout.write("Enter a sentence: ");
  String sentence = stdin.readLineSync()!;


  List<String> words = sentence.trim().split(RegExp(r"\s+"));
  int wordCount = words.length;
  String shortest = words[0];
  String longest = words[0];

  for (String word in words) {
    if (word.length < shortest.length) {
      shortest = word;
    }
    if (word.length > longest.length) {
      longest = word;
    }
  }

  print('The sentence contains $wordCount words.');
  print('Shortest word: $shortest');
  print('Longest word: $longest');
}
