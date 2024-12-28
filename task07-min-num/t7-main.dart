void main() {
  // List of integer numbers
  List<int> numbers = [12, 7, 19, 4, 15];

  // Find the minimum value using our custom function
  int minValue = findMinimum(numbers);

  print("Our List: $numbers");
  print("The minimum value in the list is: $minValue");
}

/// Our custom function to find the minimum value in a list
int findMinimum(List<int> numbers) {
  // Initialize minimum with the first element
  int min = numbers[0];

  // Loop through the list to find the minimum value
  for (int number in numbers) {
    if (number < min) {
      min = number;
    }
  }

  return min;
}
