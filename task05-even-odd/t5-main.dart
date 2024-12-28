void main() {
  // Add a list of numbers
  List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  // Iterate through the list using a for loop
  for (int number in numbers) {
    // Use switch-case to determine if the number is even or odd
    switch (number % 2) {
      case 0:
        print("Number $number is Even");
        break;
      case 1:
        print("Number $number is Odd");
        break;
      default:
        print("Unexpected case, Is $number a normal number? :/");
    }
  }
}
