### Programing by Dart
## Project - Library system

## Description
This is a simple library management system implemented in Dart. The program allows managing books and users in a library. It supports operations like adding books, borrowing books, returning books, and displaying the library's information.

## Features
- **Book Management**: Add new books, borrow books, and return borrowed books.
- **User Management**: Maintain a list of users with their information.
- **Display Information**: View details about books and users in the library.

## Classes Overview

### 1. `Book`
Represents a book in the library.
- **Attributes**:
  - `id`: Unique identifier for the book.
  - `title`: Title of the book.
  - `borrowed`: Boolean indicating if the book is borrowed.
- **Methods**:
  - `displayInfo()`: Displays the book's details.

### 2. `User`
Represents a library user.
- **Attributes**:
  - `id`: Unique identifier for the user.
  - `name`: Name of the user.
- **Methods**:
  - `displayInfo()`: Displays the user's details.

### 3. `Library`
Manages books and users in the library.
- **Attributes**:
  - `books`: List of `Book` objects.
  - `users`: List of `User` objects.
- **Methods**:
  - `addBook(String bookTitle)`: Adds a new book to the library.
  - `borrowBook(String bookTitle)`: Borrows a book by its title.
  - `returnBook(String bookTitle)`: Returns a borrowed book by its title.
  - `displayInfo()`: Displays all books and users in the library.