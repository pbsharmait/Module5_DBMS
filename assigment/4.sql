create database salespersonandcustomer;
use salespersonandcustomer;

 create table salesperson(
 Sno int,
 Sname varchar(50),
 City varchar(50),
 Comm double,
 primary key (Sno)
 );
 
 create table customer(
 Cnm int,
 Cname varchar(50),
 City varchar(50),
 Rating int,
 Sno int,
 primary key (Cnm),
 foreign key (Sno) references salesperson(Sno)
 );
  insert into salesperson(Sno,Sname,City,Comm)
  values(1001,'Peel','London',.12),
  (1002,'Serres','Sen Jose',.13),
  (1004,'Motika','London',.11),
  (1007,'Rafkin','Barcelona',.15),
  (1003,'Axelrod','New York',.1)
  
  insert into customer(Cnm,Cname,City,Rating,Sno)
  values(201,'Hoffman','London',100,1001),
  (202,'Giovanne','Roe',200,1003),
  (203,'Liu','Son Jose',300,1002),
  (204,'Grass','Barcelona',100,1002),
  (206,'Clemens','London',300,1007),
  (207,'Pereira','Roe',100,1004)
  
  --  Names and cities of all salespeople in London with commission above 0.12
  
  select Sname, City from salesperson where comm > 0.12 and City = 'London' ;        

-- All salespeople either in Barcelona or in London
select Sname, City from salesperson where City in ('Barcelona','London')
 
 -- All salespeople with commission between 0.10 and 0.12. (Boundary values should be excluded)
select Sname, Comm from salesperson where Comm>.10 and Comm<.12
 
 -- All customers excluding those with rating <= 100 unless they are located in Rome
 select Cname from customer where Rating <= 100 or City = 'Rome'




 

 

