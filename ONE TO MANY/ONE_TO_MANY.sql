create database Exercise;

use exercise;

-- joins exercise

use exercise;

create table students (
id int AUTO_INCREMENT PRIMARY KEY,
first_name varchar(100)
);

create table papers (
title varchar(100), 
grade int,
student_id int,
FOREIGN KEY (student_id) 
   REFERENCES students(id)
);

INSERT INTO students (first_name) VALUES 
('Caleb'), ('Samantha'), ('Raj'), ('Carlos'), ('Lisa');

INSERT INTO papers (student_id, title, grade ) VALUES
(1, 'My First Book', 60),
(1, 'My Second Book', 75),
(2, 'Russian Lit', 94),
(2, 'De and The Art', 98),
(4, 'Bor and Magic', 89);

select * from students;
select * from papers;

desc STUDENTS;
describe PAPERS;

-- PROBLEM 1

select * from students
join papers
on students.id = papers.student_id;

select first_name, title, grade from students
join papers
on students.id = papers.student_id
order by grade;

select first_name, title, grade from students
Right join papers
on students.id = papers.student_id
order by grade;

-- PROBLEM 2

SELECT first_name, title, grade
FROM students
LEFT JOIN papers
    ON students.id = papers.student_id;

-- PROBLEM 3

SELECT
    first_name,
    IFNULL(title, 'MISSING') AS BOOK,
    IFNULL(grade, 0) AS GRADEE
FROM students
LEFT JOIN papers
    ON students.id = papers.student_id;
    
-- PROBLEM 4

SELECT
    first_name,
    IFNULL(AVG(grade), 0) AS average
FROM students
LEFT JOIN papers
    ON students.id = papers.student_id
GROUP BY students.id
ORDER BY average DESC;

-- PROBLEM 5

SELECT first_name, 
       Ifnull(Avg(grade), 0) AS average, 
       CASE 
         WHEN Avg(grade) IS NULL THEN 'FAILING' 
         WHEN Avg(grade) >= 75 THEN 'PASSING' 
         ELSE 'FAILING' 
       end                   AS passing_status 
FROM   students 
       LEFT JOIN papers 
              ON students.id = papers.student_id 
GROUP  BY students.id 
ORDER  BY average DESC;
