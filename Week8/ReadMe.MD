# Library Management System Database

## Description:
This project is a MySQL-based **Library Management System** that helps manage and track books, authors, categories, members, and the borrowing history of a library. The system allows librarians to view available books, manage member records, and keep track of borrowed books. 

This database system is designed to be efficient, secure, and flexible for managing the operations of a library.

## Features:
- **Books Management**: Manage book details, including title, ISBN, published year, author, and category.
- **Author Management**: Track information about authors, including their first and last names, as well as their birth year.
- **Category Management**: Categorize books into various categories (e.g., Fiction, Non-Fiction, Fantasy, etc.).
- **Member Management**: Keep records of library members, including contact details and membership dates.
- **Borrowing History**: Track which books are borrowed by members, the borrowing and return dates.

## How to Run/Setup:
1. **Download the SQL file**: Download `library_management_system.sql` from the repository.
2. **Import the SQL file** into your MySQL database using one of the following methods:
   - **MySQL Command Line**:
     ```sql
     source /path/to/library_management_system.sql;
     ```
   - **MySQL Workbench**: Open MySQL Workbench and run the script by selecting "File > Open SQL Script" and executing it.

3. Once the SQL script is executed, the database will be set up with the following:
   - **Tables**: Authors, Categories, Books, Members, Borrowing
   - **Sample Data**: A few authors, categories, books, members, and borrowing records will be inserted.

## ERD (Entity-Relationship Diagram):
The **ERD** represents the relationships between the entities in the system (Books, Authors, Categories, Members, Borrowing). It visualizes how data is structured in the database.

![ERD](./ERD.png)  
(*Include a link or screenshot of your ERD here*)

You can use tools like [MySQL Workbench](https://www.mysql.com/products/workbench/) or [dbdiagram.io](https://dbdiagram.io) to visualize and design ERDs.

## Technologies Used:
- **MySQL**: Relational Database Management System for data storage.
- **SQL**: Structured Query Language for managing and manipulating data.

## GitHub Repository:
[GitHub Repository Link](https://github.com/yourusername/LibraryManagementSystem)

## License:
This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details.

## Future Improvements:
- Adding functionality for overdue books and fines.
- Integration with a web application for user interaction (e.g., for searching books or managing account).
- Allow users to rate books and provide reviews.
