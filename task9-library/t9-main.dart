class Book {
  int id;
  String title;
  bool borrowed;

  Book(this.id, this.title, this.borrowed);

  displayInfo() {
    // print("\n##### Book Info #####");
    print("ID: $id, Title: $title, Borrowed: $borrowed");
  }
}

class User {
  final int id;
  final String name;

  User(this.id, this.name);
  displayInfo() {
    // print("\n##### User Info #####");
    print("ID: $id, Name: $name");
  }
}

class Library {
  final List<Book> books;
  final List<User> users;

  Library(this.books, this.users);

  addBook(String bookTitle) {
    print("\n##### Adding Book #####");
    books.add(Book(books.length + 1, bookTitle, false));
    print("Book $bookTitle added successfully!");
  }

  borrowBook(String bookTitle) {
    print("\n##### Borrowing Book #####");
    for (var book in books) {
      if (book.title == bookTitle) {
        if (book.borrowed) {
          print("Book $bookTitle is already borrowed!");
          return;
        }
        book.borrowed = true;
        print("Book $bookTitle borrowed successfully!");
        return;
      }
    }
    print("Book $bookTitle not found in library!");
  }

  returnBook(String bookTitle) {
    print("\n##### Returning Book #####");
    for (var book in books) {
      if (book.title == bookTitle) {
        if (!book.borrowed) {
          print("Book $bookTitle is not currently borrowed!");
          return;
        }
        book.borrowed = false;
        print("Book $bookTitle returned successfully!");
        return;
      }
    }
    print("Book $bookTitle not found in library!");
  }

  displayInfo() {
    print("\n##### ##### Library Info ##### #####");
    print("\n##### Books Info #####");
    for (var book in books) {
      book.displayInfo();
    }
    print("\n##### Users Info #####");
    for (var user in users) {
      user.displayInfo();
    }
    print("\n##### ##### ##### ##### ##### #####");
  }
}

void main() {
  // Creating instances of Book, User, and Library classes
  Book book1 = Book(1, "The Great Gatsby", false);
  Book book2 = Book(2, "The Power of the Habit", false);
  User user1 = User(1, "Youssef");
  User user2 = User(2, "Mohammed");
  Library library = Library([book1, book2], [user1, user2]);

// Display initial state of library
  library.displayInfo();

// Add a new book
  library.addBook("The Catcher in the Rye");

// Borrow a book
  library.borrowBook("The Great Gatsby");

  library.borrowBook("The Great Gatsby");

  library.borrowBook("Rich Dad Poor Dad");

  library.borrowBook("The Power of the Habit");

// Return a book
  library.returnBook("The Great Gatsby");

// Display final state of library
  library.displayInfo();
}
