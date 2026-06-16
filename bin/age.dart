// Module 1 – Activity 3 – Dart I/O (Input and Output)
//
// Ask the user for their nickname and their current age, then display a
// message showing how many years they have left before they reach 100.
//
// Read the input in THIS order:  1) nickname   2) age
// The remaining years is 100 minus the age.
//
// Concepts to research (see the Dart cheat sheet): reading input from the
// user, converting text into a number, and printing to the console.

import 'dart:io';

void main() {
  // TODO: write your solution here
  stdout.write("Enter your nickname: ");
  String nickname = stdin.readLineSync()!;

  stdout.write("Enter your current age: ");
  int age = int.parse(stdin.readLineSync()!);

  int yearsLeft = 100 - age;

  print("$nickname, you have $yearsLeft years left before you reach 100.");
}
