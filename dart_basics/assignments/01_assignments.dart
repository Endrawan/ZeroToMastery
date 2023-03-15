import 'dart:io';

void main() {
  stdout.write("What is your favorite musician?\n");

  String favMusician = stdin.readLineSync()!;

  stdout.write("Your favorite musician is : $favMusician");
}