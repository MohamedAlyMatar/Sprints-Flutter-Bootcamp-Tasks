import 'dart:io';

void main() {
  // Ask the user to enter a number
  print("Enter an integer number:");

  // Read user input and parse it to an integer and using null-safety for empty response case
  int? number = int.tryParse(stdin.readLineSync() ?? '');

  // Check if the input is valid
  if (number == null) {
    print("Invalid input. Please enter a valid integer.");
    return;
  }

  // Check if the number is positive or negative
  if (number > 0) {
    print("The number $number is Positive.");
  } else if (number < 0) {
    print("The number $number is Negative.");
  } else {
    print("It's a Zero! $number");
  }

  // Check if the number is even or odd
  if (number % 2 == 0) {
    print("The number $number is Even.");
  } else {
    print("The number $number is Odd.");
  }
}
