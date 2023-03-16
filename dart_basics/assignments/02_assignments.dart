import 'dart:io';

void main() {
  stdout.write("Please input a number:");

  int input = int.parse(stdin.readLineSync()!);
  late int result = 1;

  for(int i = input; i > 0; i--) {
    result *= i;
  }

  stdout.write("The factorial of your number is: $result");
}