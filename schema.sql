-- Create Database
CREATE DATABASE IF NOT EXISTS LibraryDB;
USE LibraryDB;


-- Authors Table

CREATE TABLE Authors (
    author_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(200) NOT NULL
);


-- Books Table

CREATE TABLE Books (
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(45),
    genre VARCHAR(45),
    isbn VARCHAR(45),
    quantity VARCHAR(45),
    author_id INT,
    FOREIGN KEY (author_id) REFERENCES Authors(author_id)
);


-- Members Table

CREATE TABLE Members (
    member_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(45),
    email VARCHAR(45),
    phone INT,
    membership_date DATE
);


-- IssuedBooks Table

CREATE TABLE IssuedBooks (
    issue_id INT AUTO_INCREMENT PRIMARY KEY,
    book_id INT,
    member_id INT,
    issue_date DATE,
    due_date DATE,
    return_date DATE,
    FOREIGN KEY (book_id) REFERENCES Books(book_id),
    FOREIGN KEY (member_id) REFERENCES Members(member_id)
);
