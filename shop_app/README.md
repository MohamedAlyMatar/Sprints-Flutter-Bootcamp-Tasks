# Xiaomi Shopping App

## Description  
This Flutter project is a simple shopping app showcasing products from Xiaomi. It includes a **PageView** for product images, a **GridView** for displaying products in a grid format, and a **ListView** to show hot offers. The app also features a custom `textTitle` widget for headers and a `gridItem` widget to display individual products.

## Features  
- Displays a title at the top of the page with a custom `AppBar` in **deep orange**.
- The homepage includes:
  - A `PageView` to swipe through featured product images.
  - A `GridView` to display a list of products in a 2x2 grid format.
  - A `ListView` that lists products with images, titles, and an info icon.
- The app is responsive and adapts to different screen sizes with the use of `MediaQuery`.
- Each class/widget is in a separate file to maintain a clean and modular structure.

## Code Explanation  

### Main Function  
The `MyHomePage` widget is the entry point for the homepage of the app.

### `MyHomePage` Widget  
This is a `StatefulWidget` that contains the main UI of the app. The widget is composed of:
1. **AppBar**:
   - Displays the title "Xiaomi Shopping App" at the top of the page with a **deep orange** background.
2. **Body**:
   - A `SingleChildScrollView` ensures the page is scrollable.
   - A `Column` widget with multiple sections:
     - **Featured Products**: 
       - A `PageView` that contains product images in a swipeable layout.
     - **Products Grid**: 
       - A `GridView.builder` to display products in a 2x2 grid format.
     - **Hot Offers**:
       - A `ListView.builder` to display product offers in a list format with an image, title, and info icon.

### Sample Output  
![Alt Text](r-output.png)
