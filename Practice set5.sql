create table Employee(Id int, First_Name varchar(20),Last_name varchar (20),Loc varchar(20),Dept varchar (20),Salary int);

select*from Employee ;

insert into Employee values(1,'Soniya','Naik','Sangali','Hr',15000);
insert into Employee values(2,'Taniya','Rane','Pune','Ele',25000);
insert into Employee values(3,'Priya','Wagle','Mumbai','Mech',16000);
insert into Employee values(4,'Kavya','Sharma','Kolhapur','Civil',20000);
insert into Employee values(5,'Jaya','Dcousta','meeraj','Comp',35000);
insert into Employee values(6,'Somya','Pillai','Goa','It',45000);
insert into Employee values(7,'Surya','Mathur','Delhi','Hr',15000);
insert into Employee values(8,'Navya','Thagor','Satara','Finance',34000);
insert into Employee values(9,'Bhavya','Pande','Agra','Account',29000);
insert into Employee values(10,'Chaitanya','Shet','Chennai','Doc',55000);

select*from Employee where Dept='Hr';
select*from Employee where Dept!='Hr';
select*from Employee where salary>35000;
select*from Employee where salary>=35000;
select*from Employee where salary<35000;
select*from Employee where salary<=35000;

select*from Employee where First_name='Taniya' and salary=25000;
select*from Employee where First_name='Taniya' or salary=55000;

select*from Employee where First_name in ('Taniya','Navya','Jaya');
select*from Employee where First_name not in ('Taniya','Navya','Jaya');

select *from Employee where Id between 6 and 9 ;
select *from Employee where salary between 20000 and 45000 ;
select *from Employee where salary  not between 20000 and 45000 ;
select *from Employee where First_name between 'E' and 'T' ;
select *from Employee where First_name  not between 'E' and 'T' ;
select *from Employee where First_name  <='N ';
select *from Employee where First_name  >='N ';


select*,Add_salary=salary+1000,Ded_salary=salary-1000,Multi_salary=salary*2
,Divide_salry=salary/2,Increase2percent_salary=salary+(salary*0.02),Decrese2persent_salary=salary-(salary*0.02) from Employee;


select*from Employee where First_name like '_a%';
select*from Employee where First_name like '__m%';
select*from Employee where First_name like '[kp]%'
select*from Employee where First_name like '[^kp]%'
select*from Employee where First_name like '[k-p]%'
select*from Employee where First_name like '[^k-p]%'


select*from Employee order by salary desc;
select*from Employee order by salary asc;
select*from Employee order by First_name desc;
select*from Employee order by First_name asc;


select*from Employee where salary is null;
select*from Employee where salary is not null;

alter table Employee add Gender Varchar;
select*from Employee;

Update Employee set Gender='f' where Last_Name='Sharma';
Update Employee set Gender='f' where Last_Name='Naik'
Update Employee set Gender='f' where Last_Name='Pillai'
Update Employee set Gender='f' where Last_Name='Thagor'
Update Employee set Gender='f' where Last_Name='Shet'
Update Employee set Gender='f' where Last_Name='Rane'

Update Employee set Gender='M' where Last_Name='Wagle'
Update Employee set Gender='M' where Last_Name='Dcousta'
Update Employee set Gender='M' where Last_Name='Mathur'
Update Employee set Gender='M' where Last_Name='Pande'
Update Employee Set First_name='Amit' where Last_Name='Wagle'
Update Employee Set First_name='Joseph' where Last_name='Decousta'
Update Employee Set First_name='Bharat' where Last_name='Pande';


 select min(salary) from Employee;
 select max(salary) from Employee;
 select avg(salary) from Employee;
 select sum(salary) from Employee;
 select count(salary)from Employee;

 select top 3 salary from Employee order by salary desc;
  select top 3 salary from Employee order by salary asc;


  select distinct(dept)from Employee;

  create table T1 (Id int primary key,Age int);
  select *from T1;
  insert into T1 values(101,29);

  delete T1;
  drop table T1;

  
  create table T2 (Id int ,Age int Unique);
  select *from T2;
  insert into T2 values(101,29);

  create table T3(id int,Salary int check (salary>2000));
  select*from T3;
  insert into T3 values(1,1500);
  insert into T3 values (2,2500);


  create table T4 (Id int, name varchar(20),Gender varchar(20) check(Gender='Female'));
  select*from T4;
  insert into T4 values(101,'Rohit','Male');
    insert into T4 values(102,'Riya','Female');
    insert into T4 values(103,'Ronak','Male');
	  insert into T4 values(104,'Reema','Female');

	  create table T5(Id int, Name varchar (20) default 'Poonam');
	  select*from T5;
	  insert into T5 values(101,default);


	  insert into T5 (id) values ('102');
	  	  insert into T5 (id) values ('103');

	  delete T5 ;

	  create table T(Id int identity(11,10) ,Name Varchar(20));
	  select*from T
	  insert into T values('Rohit');
	  insert into T values('Mohit');
      insert into T values('Pohit');

	  create table D(Id int primary key identity, Name varchar(20));
	  select *from D
	  Insert into D values('Rohit');
	  Insert into D values('Mohit');
	  Insert into D values('Sohit');
	  Insert into D values('Lohit');

	  create table D2 (DID int identity, Name varchar (20), id int Foreign key references D(id));
	  select*from D2
	  Insert into D2 values('Reema',2);
	  Insert into D2 values('Meema',1);
	  Insert into D2 values('Leema',4);
	  Insert into D2 values('Seema',3);

	  select Dept ,min(salary) as new_salary from Employee group by dept;
select Dept ,count(Dept) as Naming from Employee group by Dept having count(Dept)>1;
select*from Employee
select salary ,count(salary) as Naming from Employee group by salary having count(salary)>1;
select dept ,avg(salary) from Employee group by dept having avg(salary)>20000;
select dept ,min(salary) from Employee where dept in ('Hr','Mech') group by dept having min(salary)>10000 order by salary asc;

create table info(Id int,age int,dept varchar (20));
select*from info;
insert into info values (1,29,'Mech');
insert into info values (2,29,'Civil');
insert into info values (3,30,'Doc');
insert into info values (4,30,'It');
insert into info values (5,31,'BE');
insert into info values (6,31,'Elec');
insert into info values (7,32,'Hr');
insert into info values (8,32,'Soft');
drop table info

with New_table as
(select*,Dense_rank() over (partition By Dept order by age desc) as New_rank from info)
select*from New_table where New_rank='1';

create table Over_test(Id int,F_name varchar (20),Gender varchar (20),Salary int);
select *from Over_test;
Insert into Over_test values(1,'Mina','F',1000);
Insert into Over_test values(2,'tina','M',2000);
Insert into Over_test values(3,'sina','F',4000);
Insert into Over_test values(4,'lina','F',5000);
Insert into Over_test values(5,'bina','M',8000);
Insert into Over_test values(6,'pina','M',6000);
Insert into Over_test values(7,'kina','F',9000);
Insert into Over_test values(8,'nina','M',3000);
Insert into Over_test values(9,'null','null',3000);
update Over_test set Gender='M' where id=9;
select*from Over_test;


with New_table as
(select*,Dense_rank() over (Partition by gender order by gender desc)as New from Over_test)
select * from New_table where New >=1;


with New_table as
(select*,Dense_rank() over (Partition by gender order by salary desc)as New from Over_test)
select * from New_table order by New,gender;


select* ,upper (F_name)as new_name from Over_test where F_name='kina';
select* ,upper (F_name)as new_name from Over_test-- where F_name='kina';
select* ,lower (Gender),(F_name)as new_name from Over_test-- where F_name='kina';
select*,substring(F_name,2,1)from Over_test
select*,substring(F_name,2,2)from Over_test
select*,substring(F_name,2,3)from Over_test
select*,len(F_name)from Over_test;
select*,reverse(F_name) as R from Over_test;
select*,Replicate('Mina',3) as R from Over_test-- where salary=1000;
select*, Replace('Pina','P','R') from Over_test where id=6
select*,upper(substring(F_name,2,3)) from Over_test;
select*,F_name+'    '+Gender as full_name from Over_test
select concat (F_name,'  ', Gender)as new from Over_test;
select concat (F_name,'     ', id)as new from Over_test;
select round (74.4,0);
select round (78.565,1)
select round (78.565,2)
select round (78.565,3)

select *,isnull(F_name,'No_name') from Over_test;

PK__T1__3214EC071115A975
select*from T0;
insert into T0 values(101,29);
alter table T0 drop constraint [PK__T1__3214EC071115A975]
alter table T0 add constraint PK_new primary key (id);

alter table T2 add constraint Uq_new unique (id);

alter column is not null
select*from T0

alter table T2 alter column id int not null;

select*from T2;
insert into T2 values(101,29);
alter table T2 drop constraint[UQ__T2__C6971A51C693A19D]



create table Q( Id int primary key, Age int)
Select*from Q
insert into Q values(101,29);
alter table Q drop constraint [PK__Q__3214EC070A7753E3]
alter table Q add constraint PK_new primary key(id)

selct*from C_info;
sp_rename'T1.age','loc';
select*from T1
sp_rename 'T1','T0';
select*from T0

















