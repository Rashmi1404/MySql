-- Inserting Data

-- The "formula":

INSERT INTO table_name(column_name) VALUES (data);

-- For example:

INSERT INTO cats(name, age) VALUES ('Jetson', 7);

-- select statement

SELECT * FROM cats; 

-- multiple insert

INSERT INTO table_name 
            (column_name, column_name) 
VALUES      (value, value), 
            (value, value), 
            (value, value);

-- INSERT Challenge Solution Code

CREATE TABLE people
  (
    first_name VARCHAR(20),
    last_name VARCHAR(20),
    age INT
  );
INSERT INTO people(first_name, last_name, age)
VALUES ('Tina', 'Belcher', 13);
INSERT INTO people(age, last_name, first_name)
VALUES (42, 'Belcher', 'Bob');
INSERT INTO people(first_name, last_name, age)
VALUES('Linda', 'Belcher', 45)
  ,('Phillip', 'Frond', 38)
  ,('Calvin', 'Fischoeder', 70);
  
DROP TABLE people; 

SELECT * FROM people; 

show tables; 

-- CODE: Primary Keys
-- Define a table with a PRIMARY KEY constraint:

CREATE TABLE unique_cats
  (
    cat_id INT NOT NULL,
    name VARCHAR(100),
    age INT,
    PRIMARY KEY (cat_id)
  );
DESC unique_cats; 

-- Insert some new cats:

INSERT INTO unique_cats(cat_id, name, age) VALUES(1, 'Fred', 23);

INSERT INTO unique_cats(cat_id, name, age) VALUES(2, 'Louise', 3);

INSERT INTO unique_cats(cat_id, name, age) VALUES(1, 'James', 3);

-- Notice what happens:

SELECT * FROM unique_cats; 

-- Adding in AUTO_INCREMENT:

CREATE TABLE unique_cats2 (
    cat_id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(100),
    age INT,
    PRIMARY KEY (cat_id)
);
-- INSERT a couple new cats:

INSERT INTO unique_cats2(name, age) VALUES('Skippy', 4);
INSERT INTO unique_cats2(name, age) VALUES('Jiff', 3);
INSERT INTO unique_cats2(name, age) VALUES('Jiff', 3);
INSERT INTO unique_cats2(name, age) VALUES('Jiff', 3);
INSERT INTO unique_cats2(name, age) VALUES('Skippy', 4);

-- Notice the difference:

SELECT * FROM unique_cats2;


-- Table Constraints Exercise Solution
-- Defining The employees table:

CREATE TABLE employees (
    id INT AUTO_INCREMENT NOT NULL,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    middle_name VARCHAR(255),
    age INT NOT NULL,
    current_status VARCHAR(255) NOT NULL DEFAULT 'employed',
    PRIMARY KEY(id)
);

-- Another way of defining a primary key:

CREATE TABLE employees (
    id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    middle_name VARCHAR(255),
    age INT NOT NULL,
    current_status VARCHAR(255) NOT NULL DEFAULT 'employed'
);

-- A test INSERT:

INSERT INTO employees(first_name, last_name, age) VALUES
('Dora', 'Smith', 58);

-- If you're wondering how to insert a string (VARCHAR) value that contains quotations, then here's how.

-- You can do it a couple of ways:

-- Escape the quotes with a backslash: "This text has \"quotes\" in it" or 'This text has \'quotes\' in it'

-- Alternate single and double quotes: "This text has 'quotes' in it" or 'This text has "quotes" in it'