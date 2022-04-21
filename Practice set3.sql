create table Emp_1(id int, Name varchar(20),Last_name varchar (20),Location varchar (20),Dept varchar(20),Salary int);
select *from Emp_1;
insert into Emp_1 values(1,'Rohan','Rane','Pune','Hr',15000);
insert into Emp_1 values(2,'Mohan','Tamse','Mumbai','Doct',25000);
insert into Emp_1 values(3,'Sohan','Mane','Kolhapur','Mech',35000);
insert into Emp_1 values(4,'Pohan','Naik','Solhapur','Civil',45000);
insert into Emp_1 values(5,'Arun','Pande','Delhi','Elec',15000);
insert into Emp_1 values(6,'Karan','Shindhe','Agra','It',50000);
insert into Emp_1 values(7,'Latika','Patil','Jaipur','Account',20000);
insert into Emp_1 values(8,'Tara','Kahn','Bangalore','Hr',null);

select *from Emp_1 where Location='Pune';
select *from Emp_1 where Dept='Hr';
select*from Emp_1 where salary!=15000;
select*from Emp_1 where salary<=25000;
select *from Emp_1 where Name='Rohan' or salary=15000;
select *from Emp_1 where name in('Rohan','Arun','Tara');
select *from Emp_1 where name not in('Rohan','Arun','Tara');
select *from Emp_1 where name ='Rohan' or salary in(50000,35000);
select *from Emp_1 where salary  not between 35000 and 50000;
select *from Emp_1 where name like '_%n';
select *from Emp_1 where name like '[B-P]%';

select*,Add_salary=salary+1000,Ded_salary=salary-1000,Multi_salary=salary*2,
Devide_salary=salary/2,Increase2persent_salary=salary+(salary*0.02),Decrease2persent_salary=salary-(salary*0.02) from Emp_1;

select *from Emp_1 order by salary desc;

select *from Emp_1 order by salary asc;
select*from Emp_1 where salary is null;

alter table Emp_1 add age int;
select *from Emp_1;
Update Emp_1 set  age=29 where Last_name='Rane';
Update Emp_1 set  age=30 where Last_name='Tamse';
Update Emp_1 set  age=26 where Last_name='mane';
Update Emp_1 set  age=28 where Last_name='Pande';
Update Emp_1 set  age=25 where Last_name='Naik';
Update Emp_1 set  age=22 where Last_name='Patil';
Update Emp_1 set  age=29 where name='karan';
update Emp_1 set  salary=30000 where name='Latika';

select min(salary) as new_salary from Emp_1;
select top 2 salary from Emp_1 order by salary desc;

create table E1(id int primary key,Name varchar(20));
select *from E1;
insert into E1 values (101,'Rohit');
insert into E1 values (101,'Karan');
create table Ep2(Id int, salary int check (salary>1500));
select *from Ep2;
insert into Ep2 values (101,2000);
insert into Ep2 values (101,1000);

create table Key1(Id int primary key identity,Name varchar (20));
select *from Key1;
insert into Key1 values('Amit');
insert into Key1 values('Sumit');
insert into Key1 values('Ronit');
insert into Key1 values('Lohit');

create table Key2 (Kid int identity, Name varchar(20),Id int foreign key references Key1(Id));
select*from Key2;

insert into Key2 Values('Rohan',2);
insert into Key2 Values('Sohan',3);
insert into Key2 Values('Mohan',1);
insert into Key2 Values('Dohan',4);

select*from Emp_1;

select name,max(salary)as Max_sal from Emp_1 group by name having max(salary)<35000;

