use student_exam;
create table student(
rollno int auto_increment,
sname varchar(50),
branch varchar(50),
primary key (rollno)
);

create table exam(
rollno int,
s_code varchar(50),
marks int,
p_code varchar(50),
foreign key (rollno) references student(rollno)
);


insert into student(sname,branch)
values('Jay','Computer Science'),
('Suhani','Electronic and Com'),
('Kriti','Electronic and Com')

insert into exam(rollno,s_code,marks,p_code)
values(1,'CS11',50,'CS'),
(1,'CS12',60,'CS'),
(2,'EC101',66,'EC'),
(2,'EC102',70,'EC')

