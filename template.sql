-- Active: 1732755449547@@127.0.0.1@3306
CREATE TABLE Books (
    BookID INTEGER PRIMARY KEY,
    Title TEXT NOT NULL,
    Author TEXT,
    Genre TEXT,
    ISBN TEXT UNIQUE NOT NULL,
    PublishedYear INTEGER
);

CREATE TABLE CheckedOutBooks (
    CheckoutID INTEGER PRIMARY KEY,
    BookID INTEGER NOT NULL,
    MemberID INTEGER NOT NULL,
    CheckoutDate DATE NOT NULL,
    DueDate DATE NOT NULL,
    ReturnDate DATE,
    FOREIGN KEY (BookID) REFERENCES Books (BookID) ON DELETE CASCADE,
    FOREIGN KEY (MemberID) REFERENCES LibraryMembers (MemberID) ON DELETE CASCADE
);

CREATE TABLE LibraryMembers (
    MemberID INTEGER PRIMARY KEY,
    FirstName TEXT NOT NULL,
    LastName TEXT NOT NULL,
    Email TEXT UNIQUE,
    Phone TEXT
);

INSERT INTO
    Books (
        Title,
        Author,
        Genre,
        ISBN,
        PublishedYear
    )
VALUES (
        'To Kill a Mockingbird',
        'Harper Lee',
        'Fiction',
        '9780061120084',
        1960
    ),
    (
        '1984',
        'George Orwell',
        'Dystopian',
        '9780451524935',
        1949
    ),
    (
        'The Great Gatsby',
        'F. Scott Fitzgerald',
        'Classic',
        '9780743273565',
        1925
    ),
    (
        'The Catcher in the Rye',
        'J.D. Salinger',
        'Fiction',
        '9780316769488',
        1951
    ),
    (
        'Moby Dick',
        'Herman Melville',
        'Adventure',
        '9781503280786',
        1851
    );

INSERT INTO
    LibraryMembers (
        FirstName,
        LastName,
        Email,
        Phone,
        MembershipStartDate,
        MembershipStatus
    )
VALUES (
        'John',
        'Doe',
        'johndoe@example.com',
        '555-1234',
        '2023-01-15',
        'Active'
    ),
    (
        'Jane',
        'Smith',
        'janesmith@example.com',
        '555-5678',
        '2023-03-10',
        'Active'
    ),
    (
        'Alice',
        'Johnson',
        'alicej@example.com',
        '555-8765',
        '2022-12-01',
        'Active'
    ),
    (
        'Bob',
        'Williams',
        'bobw@example.com',
        '555-3456',
        '2023-02-20',
        'Inactive'
    ),
    (
        'Charlie',
        'Brown',
        'charlieb@example.com',
        '555-7890',
        '2023-05-05',
        'Active'
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
        '2023-11-01',
        '2023-11-15',
        NULL
    ),
    (
        2,
        2,
        '2023-11-05',
        '2023-11-20',
        '2023-11-18'
    ),
    (
        3,
        3,
        '2023-11-10',
        '2023-11-25',
        NULL
    ),
    (
        4,
        4,
        '2023-11-12',
        '2023-11-26',
        NULL
    ),
    (
        5,
        5,
        '2023-11-15',
        '2023-11-30',
        NULL
    );