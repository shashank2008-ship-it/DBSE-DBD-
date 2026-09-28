create database Marks;
use marks;
create table student_marks (
roll_no int primary key,
name varchar(100),
subject varchar(100),
marks int
);
insert into student_marks (roll_no, name, subject, marks) values
(1, 'Ravi', 'Math', 85.50),
(2, 'Sita', 'Math', 92.75),
(3, 'Anil', 'Math', 78.40),
(4, 'Priya', 'Math', 88.90),
(5, 'Vijay', 'Math', 80.25),
(6, 'subbusir', 'aws', 98.50),
(7, 'dwaraka', 'dbms', 95.75),
(8, 'siva', 'english', 97.40),
(9, 'kavithamam', 'aws1', 99.90),
(10, 'seetha', 'azure', 82.25)

SELECT * from student_marks;

select count(*) from student_marks;
select sum(marks) from student_marks;
select avg(marks) from student_marks;
select max(marks) from student_marks;
select min(marks) from student_marks;

select * from student_marks where marks>85;
select * from student_marks where marks>=90;
select * from student_marks where marks<80;
select * from student_marks where marks between 80 and 90;
select * from student_marks where name like 'p%';
SELECT * FROM student_marks WHERE name IN ('Ravi', 'Sita', 'Vijay');
SELECT * FROM student_marks WHERE marks > 85 AND (subject = 'Math' OR name LIKE 'P%');

update student_marks set marks=90.55 where roll_no=3;

select * from student_marks order by marks asc;
select * from student_marks order by roll_no desc;
