create database bankmanagement;
use  bankmanagement;

create table bank_transsactions (
id int primary key,
customer_name varchar(50),
branch_name varchar(50),
transaction_type varchar(20),
amount decimal(10,2),
transaction_date date
);

INSERT INTO bank_transsactions VALUES
(101,'Ravi','Hyderabad','Deposit',5000,'2024-01-05'),
(102,'Sita','Hyderabad','Withdrawal',2000,'2024-01-06'),
(103,'Kiran','Vijayawada','Deposit',12000,'2024-01-08'),
(104,'Anil','Vizag','Deposit',8000,'2024-01-10'),
(105,'Priya','Hyderabad','Withdrawal',3500,'2024-01-11'),
(106,'Ramesh','Vizag','Deposit',15000,'2024-01-12'),
(107,'Keerthi','Vijayawada','Withdrawal',1000,'2024-01-13'),
(108,'Rahul','Hyderabad','Deposit',9000,'2024-01-14'),
(109,'Sneha','Vizag','Withdrawal',4000,'2024-01-15'),
(110,'Madhu','Vijayawada','Deposit',11000,'2024-01-16');

select  sum(amount) as total_amount from bank_transsactions;
select avg(amount) as average_transaction from bank_transsactions;
select max(amount) as highest_transaction from bank_transsactions;
select min(amount) as lowest_transaction from bank_transsactions;
select count(*) as Total_transaction from bank_transsactions;

SELECT SUM(amount) AS Total_Deposit FROM bank_transsactions WHERE transaction_type='Deposit';
SELECT branch_name,SUM(amount) AS Total_Amount FROM bank_transsactions GROUP BY branch_name;
SELECT branch_name,SUM(amount) AS Total_Amount FROM bank_transsactions GROUP BY branch_name having sum(amount)>20000;
SELECT branch_name,SUM(amount) AS Total_Amount FROM bank_transsactions GROUP BY branch_name order by total_amount desc;
SELECT branch_name,count(*) AS Total_Amount FROM bank_transsactions GROUP BY branch_name having count(*)>=3 order by total_amount desc;

