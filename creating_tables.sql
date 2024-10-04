-- Example for Books table
CREATE TABLE Books (
    ISBN VARCHAR2(13) PRIMARY KEY,
    Title VARCHAR2(255),
    Author VARCHAR2(255),
    Publisher VARCHAR2(255),
    Year_Published NUMBER,
    Genre VARCHAR2(100),
    Copies_Available NUMBER
);

-- Example for Members table
CREATE TABLE Members (
    Member_ID NUMBER PRIMARY KEY,
    Name VARCHAR2(255),
    Address VARCHAR2(255),
    Phone_Number VARCHAR2(15),
    Email VARCHAR2(255),
    Membership_Date DATE,
    Membership_Type VARCHAR2(50)
);

-- Example for Borrowing Records table
CREATE TABLE Borrowing_Records (
    Record_ID NUMBER PRIMARY KEY,
    Member_ID NUMBER REFERENCES Members(Member_ID),
    ISBN VARCHAR2(13) REFERENCES Books(ISBN),
    Borrow_Date DATE,
    Return_Date DATE,
    Status VARCHAR2(20)
);

-- Example for Fines table
CREATE TABLE Fines (
    Fine_ID NUMBER PRIMARY KEY,
    Record_ID NUMBER REFERENCES Borrowing_Records(Record_ID),
    Amount NUMBER,
    Date_Paid DATE
);

-- Example for Reservations table
CREATE TABLE Reservations (
    Reservation_ID NUMBER PRIMARY KEY,
    Member_ID NUMBER REFERENCES Members(Member_ID),
    ISBN VARCHAR2(13) REFERENCES Books(ISBN),
    Reservation_Date DATE,
    Expiry_Date DATE
);
