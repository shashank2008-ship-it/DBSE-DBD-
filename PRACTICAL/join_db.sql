create database Join_db;
use Join_db
create table class (
id int,
name varchar(30)
);
create table class_info (
id int,
address varchar(30)
);

INSERT INTO class VALUES
(1,'abhi'),
(2,'adam'),
(3,'alex'),
(4,'anu'),
(5,'ashish');

INSERT INTO class_info VALUES
(1,'DELHI'),
(2,'MUMBAI'),
(3,'CHENNAI'),
(7,'NOIDA'),
(8,'PANIPAT');

select * from class cross join class_info;
select * from class inner join class_info on class_info.id=class.id;
select class.id, class_info.address from class inner join class_info on class.id = class_info.id;
select * from class natural join class_info;
select * from class left outer join class_info on class.id=class_info.id;
select * from class right outer join class_info on class.id=class_info.id;

create table first_table (
id int,
name varchar(30)
);

create table second_table (
id int,
name varchar(30)
);

INSERT INTO first_table VALUES
(1,'abhi'),
(2,'adam');

INSERT INTO second_table VALUES
(2,'adam'),
(3,'chester');
select * from first_table;
select * from second_table;
select * from first_table union select * from second_table;
select * from first_table union all select * from second_table;