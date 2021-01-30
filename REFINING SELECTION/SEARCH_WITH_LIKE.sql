SELECT title, author_fname FROM books WHERE author_fname LIKE '%da%';

SELECT title, author_fname FROM books WHERE author_fname LIKE 'da%';

SELECT title FROM books WHERE  title LIKE 'the';

SELECT title FROM books WHERE  title LIKE '%the';

SELECT title FROM books WHERE title LIKE '%the%';

SELECT title, stock_quantity FROM books;

SELECT title, stock_quantity FROM books WHERE stock_quantity LIKE '____';

SELECT title, stock_quantity FROM books WHERE stock_quantity LIKE '__';

-- (235)234-0987 LIKE '(___)___-____'

SELECT title FROM books;

SELECT title FROM books WHERE title LIKE '%\%%'

SELECT title FROM books WHERE title LIKE '%\_%'