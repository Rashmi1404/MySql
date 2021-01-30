SELECT title, author_lname, released_year FROM books
WHERE author_lname='Eggers';

SELECT title, author_lname, released_year FROM books
WHERE released_year > 2010;

SELECT  
    title, 
    author_lname, 
    released_year FROM books
WHERE author_lname='Eggers' 
    AND released_year > 2010;

SELECT 1 < 5 && 7 = 9;
-- false

SELECT -10 > -20 && 0 <= 0;
-- true

SELECT -40 <= 0 AND 10 > 40;
--false

SELECT 54 <= 54 && 'a' = 'A';
-- true

SELECT * 
FROM books
WHERE author_lname='Eggers' 
    AND released_year > 2010 
    AND title LIKE '%novel%';