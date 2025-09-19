# datafun-05-sql
Week 5 Coursework

Learning SQL! 
Why did the SQL student bring a ladder to class?
Because they heard they needed to learn how to scale tables. 🪜📊

Directions for assignment: 

CC5.2 Plan the Project / Gather Data
Database with Two Related Tables
First, we will create a simple database (book_db) with two related tables: books and authors. This first example will be guided and we'll all do the same thing. In the project this module, you'll create any two related tables (e.g. movies and directors) to implement a custom project. Be thinking what might be interesting! 

The books table might have the following fields - Note the naming conventions! 
book_id (the unique primary key for this table, a GUID)
title (simple string),
year_published (int)
author_id (foreign key), 
The authors table might have the following fields:
author_ id (the unique primary key for this table, a GUID)
first
last
You will read from data files, create your 2 tables, and then modify the books table to include an is_favorite field. 
Planning Our Project Organization
Both in our GitHub repo and on our machine, our root project repository folder will be datafun-05-sql, and we'll create subfolders for our SQL statements, our data files, and we'll keep our Python scripts in the root project folder (with the .gitignore, .venv, README.md, and requirements.txt). 

datafun-05-sql/
│
├── data/
│   ├── authors.csv
│   └── books.csv



 

Planning Your Data Sources
In the new example project, I use author and books records that look like the content below. If you use sample data with GUIDs or integer ids, just be sure your table columns match your data types.   We have so many skills now, we can read from CSV files, or JSON files, or use GUIDs or use IDs like these. 

At work, we'll encounter all kinds of things, so I'd rather leave it up to you to initialize your database as you like. You can use any two related one to many (1:M) you like. In this project, we assume that each book has exactly one author and that an author can have 0, 1, or more books (that is, one to many or 1:M). 

From: https://github.com/denisecase/datafun-05-sql/blob/main/sql_create/03_insert_records.sqlLinks to an external site.

-- Insert records into the authors table first
INSERT INTO authors (author_id, name, birth_year, nationality) VALUES
    ('AUTHOR_001', 'J.K. Rowling', 1965, 'British'),
    ('AUTHOR_002', 'George Orwell', 1903, 'British'),
    ('AUTHOR_003', 'Harper Lee', 1926, 'American');

-- Insert records into the books table
-- And include foreign key references to the authors table
-- IMPORTANT: No tic marks inside a string, use two single quotes to escape a single quote
INSERT INTO books (book_id, title, genre, publication_year, author_id) VALUES
    ('BOOK_001', 'Harry Potter and the Sorcerer''s Stone', 'Fantasy', 1997, 'AUTHOR_001'),
    ('BOOK_002', 'Harry Potter and the Chamber of Secrets', 'Fantasy', 1998, 'AUTHOR_001'),
    ('BOOK_003', '1984', 'Dystopian', 1949, 'AUTHOR_002'),
    ('BOOK_004', 'Animal Farm', 'Political Satire', 1945, 'AUTHOR_002'),
    ('BOOK_005', 'To Kill a Mockingbird', 'Fiction', 1960, 'AUTHOR_003');

 

One common way to populate a database is from related CSV files.

For this, we typically create a data folder to hold the CSV files. You can create two CSV files in Excel with example data, or find a source, or use the book, or use this content below as you like. For example you could start with: 

authors.csv (example)
author_id,first,last
10f88232-1ae7-4d88-a6a2-dfcebb22a596,Harper,Lee
c3a47e85-2a6b-4196-a7a8-8b55d8fc1f70,George,Orwell
e0b75863-866d-4db4-85c7-df9bb8ee6dab,F. Scott,Fitzgerald
7b144e32-7ff4-4b58-8eb0-e63d3c9f9b8d,Aldous,Huxley
8d8107b6-1f24-481c-8a21-7d72b13b59b5,J.D.,Salinger
0cc3c8e4-e0c0-482f-b2f7-af87330de214,Ray,Bradbury
4dca0632-2c53-490c-99d5-4f6d41e56c0e,Jane,Austen
16f3e0a1-24cb-4ed6-a50d-509f63e367f7,J.R.R.,Tolkien
06cf58ab-90f1-448d-8e54-055e4393e75c,J.R.R.,Tolkien
6b693b96-394a-4a1d-a4e2-792a47d7a568,J.K.,Rowling
 

and books.csv (example)
book_id,title,year_published,author_id
d6f83870-ff21-4a5d-90ab-26a49ab6ed12,To Kill a Mockingbird,1960,10f88232-1ae7-4d88-a6a2-dfcebb22a596
0f5f44f7-44d8-4f49-b8c4-c64d847587d3,1984,1949,c3a47e85-2a6b-4196-a7a8-8b55d8fc1f70
f9d9e7de-c44d-4d1d-b3ab-59343bf32bc2,The Great Gatsby,1925,e0b75863-866d-4db4-85c7-df9bb8ee6dab
38e530f1-228f-4d6e-a587-2ed4d6c44e9c,Brave New World,1932,7b144e32-7ff4-4b58-8eb0-e63d3c9f9b8d
c2a62a4b-cf5c-4246-9bf7-b2601d542e6d,The Catcher in the Rye,1951,8d8107b6-1f24-481c-8a21-7d72b13b59b5
3a1d835c-1e15-4a48-8e8c-b12239604e98,Fahrenheit 451,1953,0cc3c8e4-e0c0-482f-b2f7-af87330de214
c6e67918-e509-4a6b-bc3a-979f6ad802f0,Pride and Prejudice,1813,4dca0632-2c53-490c-99d5-4f6d41e56c0e
be951205-6cc2-4b3d-96f1-7257b8fc8c0f,The Hobbit,1937,16f3e0a1-24cb-4ed6-a50d-509f63e367f7
dce0f8f2-d3ed-48a9-b8ff-960b6baf1f6f,The Lord of the Rings,1954,06cf58ab-90f1-448d-8e54-055e4393e75c
ca8e64c3-1e67-47f5-82cc-3e4e30f63b75,Harry Potter and the Philosopher's Stone,1997,6b693b96-394a-4a1d-a4e2-792a47d7a568
Save Your Work
After adding your folder and data files in VS Code, use git to add / commit / and push your content to GitHub. 

Schema Matters! 
The exact column types are important. If you use GUIDs in your sample data, when creating your SQLite table, you'll want to use a text field to hold that column. 