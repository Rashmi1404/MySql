SELECT SUBSTRING('Hello World', 1, 4);

SELECT SUBSTRING('Hello World', 7);

SELECT SUBSTRING('Hello World', 3, 8);

SELECT SUBSTRING('Hello World', 3);

SELECT SUBSTRING('Hello World', -3);

SELECT SUBSTRING('Hello World', -7);

SELECT title FROM books;

SELECT SUBSTRING("Where I'm Calling From: Selected Stories", 1, 10);

SELECT SUBSTRING(title, 1, 10) FROM books;

SELECT SUBSTRING(title, 1, 10) AS 'short title' FROM books;

SELECT SUBSTR(title, 1, 10) AS 'short title' FROM books;

SELECT CONCAT
    (
        SUBSTRING(title, 1, 10),
        '...'
    )
FROM books;


SELECT CONCAT
    (
        SUBSTRING(title, 1, 10),
        '...'
    ) AS 'short title'
FROM books;