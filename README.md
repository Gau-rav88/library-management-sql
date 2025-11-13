Library Management System — SQL Database Schema

          This project contains the SQL database design for a Library Management System.
          It includes an ER diagram and a complete SQL script to create all required tables and relationships

Files Included:

      | File                | Description                                                            |
      | ------------------- | ---------------------------------------------------------------------- |
      |   schema.sql        | SQL script to create all tables (Authors, Books, Members, IssuedBooks) |
      |   Library_ERD.png   | ER Diagram representing the database design                            |
      |   README.md         | Documentation of the project                                           |



Tables in the Database:

        1.Authors
        2.Books
        3.Members
        4.IssuedBooks

Relationships:

          One Author can write many Books
          One Book can be issued many times
          One Member can borrow many Books

          Foreign keys used:

                  Books.author_id → Authors.author_id
                  IssuedBooks.book_id → Books.book_id
                  IssuedBooks.member_id → Members.member_id



How To Use:

            1.Open any MySQL client (MySQL Workbench / VS Code SQLTools / XAMPP / phpMyAdmin).
            2.Open the schema.sql file.
            3.Run the script.
            4.The database LibraryDB will be created automatically with all tables.

        




          
          
