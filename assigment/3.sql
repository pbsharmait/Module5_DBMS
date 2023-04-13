create database employee_incentive
use employee_incentive;

create table employee(
employee_id int auto_increment,
First_name varchar (50),
Last_name varchar (50),
salary int,
Joining_date datetime,
Department varchar(50),
primary key (employee_id)
);

create table incentive(
employee_ref_id int,
incentive_date date,
incentive_amount int
);

insert into employee(First_name,Last_name,salary,Joining_date,Department)
values('John','Abraham',1000000,'2013-01-01 12:00:00','Banking'),
('Michael','Clarke',800000,'2013-01-01 12:00:00','Insurance'),
('Roy','Thomas',700000,'2013-01-01 12:00:00','Banking'),
('Tom','Jose',600000,'2013-01-01 12:00:00','Insurance'),
('Jerry','Pinto',650000,'2013-01-01 12:00:00','Insurance'),
('Philip','Mathew',750000,'2013-01-01 12:00:00','Services'),
('TestName1','123',650000,'2013-01-01 12:00:00','Services'),
('TestName1','Lname%',600000,'2013-01-01 12:00:00','Insurance')

SELECT First_name,
       Last_name,
       Salary,
       DATE_FORMAT(Joining_date,"%e %b %y %H:%i:%s %p"),
       Department
         
FROM employee;

insert into incentive(employee_ref_id,incentive_date,incentive_amount)
values(1,"2013-02-01",5000),
(2,"2013-02-01",3000),
(3,"2013-02-01",4000),
(1,"2013-01-01",4500),
(2,"2013-01-01",3500)

SELECT employee_ref_id,
       DATE_FORMAT(incentive_date,"%e %b %y"),
       incentive_amount
         
FROM incentive;

-- Get First_Name from employee table using Tom name “Employee Name”
select First_name "Employee Name" from employee

-- Get FIRST_NAME, Joining Date, and Salary from employee table.
select First_name, Joining_date, salary from employee

-- Get all employee details from the employee table order by First_Name Ascending and Salary descending?
select * from employee order by First_name Asc, salary desc

-- Get employee details from employee table whose first name contains ‘J’.
select * from employee where First_name like 'j%'

-- Get department wise maximum salary from employee table order by salary ascending?
select Department, max(salary) maxsalary from employee group by Department order by maxsalary asc

-- Select first_name, incentive amount from employee and incentives table for those employees who have incentives and incentive amount greater than 3000
select First_name, incentive_amount from employee inner join incentive on employee_id = employee_ref_id and incentive_amount >3000

-- Create After Insert trigger on Employee table which insert records in view table
DELIMITER //  
      Create Trigger after_insert  
      AFTER INSERT ON employee FOR EACH ROW  
      BEGIN  
	  INSERT INTO Employee_deteil VALUES (new.employee_id,new.First_name,new.Last_name,new.salary,new.Joining_date,new.Department);
      end //
      
      
     