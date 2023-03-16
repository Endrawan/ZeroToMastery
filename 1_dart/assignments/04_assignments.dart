import 'dart:math';
import 'dart:io';

void main() {
  const MAX_TRIES = 5;

  int tries = 0;

  var rand =  new Random();
  var randNum = rand.nextInt(10);

  while(tries < MAX_TRIES) {
    stdout.write("You have tried $tries time(s) max = ${MAX_TRIES - 1}\n");
    stdout.write("Guess what number: ");
    
    int inputNum = int.parse(stdin.readLineSync()!);
    if(inputNum < randNum) {
      stdout.write("Your guessed number is too low!");
    } else if(inputNum > randNum) {
      stdout.write("Your guessed number is too high");
    } else {
      stdout.write("Congratulations you have guessed the right number!");
      break;
    }

    tries++;
    stdout.write("\n\n");
  }
}