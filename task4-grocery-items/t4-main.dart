void main() {
  // Define a constant tax rate using const keyword
  const double taxRate = 0.10;

  // Define a list of grocery items with names and prices
  List<Map<String, dynamic>> groceryItems = [
    {"name": "Apples", "price": 30.5},
    {"name": "Milk", "price": 25.5},
    {"name": "Bread", "price": 4.0},
    {"name": "Eggs", "price": 6.5}
  ];

  // Loop over the list of map and calculate total price before tax
  double totalPriceBeforeTax = 0.0;
  for (var item in groceryItems) {
    totalPriceBeforeTax += item["price"];
  }

  // Calculate the tax amount and total price after tax
  double taxAmount = totalPriceBeforeTax * taxRate;
  double totalPriceAfterTax = totalPriceBeforeTax + taxAmount;

  print("Total Price Before Tax: \$${totalPriceBeforeTax}");
  print("Tax Amount (10%): \$${taxAmount}");
  print("Total Price After Tax: \$${totalPriceAfterTax}");
}
