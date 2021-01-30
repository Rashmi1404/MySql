create database dataandtime;
use dateandtime;

create table people (
Name varchar(100),
BIRTHDATE date,
BIRTIME time,
BIRTHDT datetime
);

INSERT INTO people (Name,BIRTHDATE,BIRTIME,BIRTHDT) values
( 'RASHMI', '16-11-11', '10:05:25', '15-11-11 10:05:25');

INSERT INTO people (Name,BIRTHDATE,BIRTIME,BIRTHDT) values
( 'NIKI', '20-11-11', '10:05:20', '21-11-11 10:05:59');

select * FROM PEOPLE;

-- curdate(),curtime(),datetime()

select curdate(); 
select curtime();
select now();

INSERT INTO people (Name,BIRTHDATE,BIRTIME,BIRTHDT) values
('Rutuja',curdate(),curtime(),now());

select * from people;

select Name, DAY(BIRTHDATE) FROM people;

select Name, dayname(BIRTHDATE) FROM people;

select Name, dayofyear(BIRTHDATE) FROM people;

select Name, monthname(BIRTHDATE) FROM PEOPLE;

-- formatting date

SELECT DATE_FORMAT(birthdt, '%m/%d/%Y') FROM people;

SELECT DATE_FORMAT(birthdt, '%m/%d/%Y at %h:%i') FROM people;



-- datemath

SELECT * FROM booksdata.people;

SELECT Name, BIRTHDATE,DATEDIFF(NOW(), BIRTHDATE) FROM people;

SELECT BIRTHDATE, date_add(BIRTHDATE, interval 1 MONTH) FROM PEOPLE;

SELECT birthdt, birthdt + INTERVAL 1 MONTH FROM people;

SELECT birthdt, birthdt - INTERVAL 5 MONTH FROM people;

SELECT birthdt, birthdt + INTERVAL 15 MONTH + INTERVAL 10 HOUR FROM people;