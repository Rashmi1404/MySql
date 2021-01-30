SELECT UPPER('Hello World');

SELECT LOWER('Hello World');

SELECT UPPER(title) FROM books;

SELECT CONCAT('MY FAVORITE BOOK IS ', UPPER(title)) FROM books;

SELECT CONCAT('MY FAVORITE BOOK IS ', LOWER(title)) FROM books;

-- please remember that order is important when dealing with combining/wrapping certain string functions.

-- For example:

-- This works:

SELECT UPPER(CONCAT(author_fname, ' ', author_lname)) AS "full name in caps"
FROM books;

-- While this does not:

SELECT CONCAT(UPPER(author_fname, ' ', author_lname)) AS "full name in caps" 
FROM books;

-- UPPER only takes one argument and CONCAT takes two or more arguments, so they can't be switched in that way.

-- You could do it this way, however:

SELECT CONCAT(UPPER(author_fname), ' ', UPPER(author_lname)) AS "full name in caps" 
FROM books;

