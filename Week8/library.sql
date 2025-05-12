-- Creating Authors table
CREATE TABLE Authors (
    AuthorID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(100) NOT NULL,
    LastName VARCHAR(100) NOT NULL,
    BirthYear INT
);

-- Creating Categories table
CREATE TABLE Categories (
    CategoryID INT AUTO_INCREMENT PRIMARY KEY,
    CategoryName VARCHAR(100) NOT NULL UNIQUE
);

-- Creating Books table with Foreign Keys (AuthorID, CategoryID)
CREATE TABLE Books (
    BookID INT AUTO_INCREMENT PRIMARY KEY,
    Title VARCHAR(255) NOT NULL,
    ISBN VARCHAR(20) UNIQUE NOT NULL,
    PublishedYear INT,
    AuthorID INT,
    CategoryID INT,
    CONSTRAINT FK_Author FOREIGN KEY (AuthorID) REFERENCES Authors(AuthorID),
    CONSTRAINT FK_Category FOREIGN KEY (CategoryID) REFERENCES Categories(CategoryID)
);

-- Creating Members table
CREATE TABLE Members (
    MemberID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(100) NOT NULL,
    LastName VARCHAR(100) NOT NULL,
    Email VARCHAR(255) UNIQUE NOT NULL,
    Phone VARCHAR(20),
    MembershipDate DATE NOT NULL
);

-- Creating Borrowing table (Many-to-Many relationship)
CREATE TABLE Borrowing (
    BorrowingID INT AUTO_INCREMENT PRIMARY KEY,
    BookID INT,
    MemberID INT,
    BorrowedDate DATE NOT NULL,
    ReturnDate DATE,
    CONSTRAINT FK_Book FOREIGN KEY (BookID) REFERENCES Books(BookID),
    CONSTRAINT FK_Member FOREIGN KEY (MemberID) REFERENCES Members(MemberID)
);

-- Sample Data Insertion for Authors
INSERT INTO Authors (FirstName, LastName, BirthYear) VALUES
('George', 'Orwell', 1903),
('J.K.', 'Rowling', 1965);

-- Sample Data Insertion for Categories
INSERT INTO Categories (CategoryName) VALUES
('Fiction'),
('Fantasy');

-- Sample Data Insertion for Books
INSERT INTO Books (Title, ISBN, PublishedYear, AuthorID, CategoryID) VALUES
('1984', '9780451524935', 1949, 1, 1),
('Harry Potter and the Philosopher\'s Stone', '9780747532699', 1997, 2, 2);

-- Sample Data Insertion for Members
INSERT INTO Members (FirstName, LastName, Email, Phone, MembershipDate) VALUES
('John', 'Doe', 'john.doe@example.com', '1234567890', '2025-01-15'),
('Jane', 'Smith', 'jane.smith@example.com', '0987654321', '2025-02-20');

-- Sample Data Insertion for Borrowing
INSERT INTO Borrowing (BookID, MemberID, BorrowedDate, ReturnDate) VALUES
(1, 1, '2025-03-01', '2025-03-15'),
(2, 2, '2025-03-10', '2025-03-20');
