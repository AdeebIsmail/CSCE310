-- Active: 1733085971218@@127.0.0.1@3306@sakila
CREATE TABLE Books (
    BookID INT AUTO_INCREMENT PRIMARY KEY,
    Title VARCHAR(255) NOT NULL,
    Author VARCHAR(255),
    Genre VARCHAR(255),
    Section VARCHAR(7) NOT NULL,
    ISBN VARCHAR(20) UNIQUE NOT NULL,
    PublishedYear INT
);

CREATE TABLE LibraryMembers (
    MemberID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(100) NOT NULL,
    LastName VARCHAR(100) NOT NULL,
    Email VARCHAR(255) UNIQUE,
    Phone VARCHAR(15)
);

CREATE TABLE CheckedOutBooks (
    CheckoutID INT AUTO_INCREMENT PRIMARY KEY,
    BookID INT NOT NULL,
    MemberID INT NOT NULL,
    CheckoutDate DATE NOT NULL,
    DueDate DATE NOT NULL,
    ReturnDate DATE,
    FOREIGN KEY (BookID) REFERENCES Books (BookID) ON DELETE CASCADE,
    FOREIGN KEY (MemberID) REFERENCES LibraryMembers (MemberID) ON DELETE CASCADE
);

INSERT INTO
    Books (
        Title,
        Author,
        Genre,
        Section,
        ISBN,
        PublishedYear
    )
VALUES (
        'To Kill a Mockingbird',
        'Harper Lee',
        'Fiction',
        '1F-S3',
        '9780061120084',
        1960
    ),
    (
        '1984',
        'George Orwell',
        'Dystopian',
        '2F-B4',
        '9780451524935',
        1949
    ),
    (
        'The Great Gatsby',
        'F. Scott Fitzgerald',
        'Classic',
        '2G-73',
        '9780743273565',
        1925
    ),
    (
        'The Catcher in the Rye',
        'J.D. Salinger',
        'Fiction',
        '3J-K1',
        '9780316769488',
        1951
    ),
    (
        'Moby Dick',
        'Herman Melville',
        'Adventure',
        '3F-69',
        '9781503280786',
        1851
    );

INSERT INTO
    LibraryMembers (
        FirstName,
        LastName,
        Email,
        Phone
    )
VALUES (
        'John',
        'Doe',
        'johndoe@example.com',
        '555-1234'
    ),
    (
        'Jane',
        'Smith',
        'janesmith@example.com',
        '555-5678'
    ),
    (
        'Alice',
        'Johnson',
        'alicej@example.com',
        '555-8765'
    ),
    (
        'Bob',
        'Williams',
        'bobw@example.com',
        '555-3456'
    ),
    (
        'Charlie',
        'Brown',
        'charlieb@example.com',
        '555-7890'
    );

INSERT INTO
    CheckedOutBooks (
        BookID,
        MemberID,
        CheckoutDate,
        DueDate,
        ReturnDate
    )
VALUES (
        1,
        1,
        '2024-11-01',
        '2024-11-15',
        NULL
    ),
    (
        2,
        2,
        '2024-11-05',
        '2024-11-20',
        '2024-11-18'
    ),
    (
        3,
        3,
        '2024-11-10',
        '2024-11-25',
        NULL
    ),
    (
        4,
        4,
        '2024-11-12',
        '2024-11-26',
        NULL
    ),
    (
        5,
        5,
        '2024-11-15',
        '2024-11-30',
        NULL
    );