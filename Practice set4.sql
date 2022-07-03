create table set1(S_ID int, SName varchar(20));
create table set2(S_ID int, SName varchar(20));

insert into set1 values(1,'A');
insert into set1 values(2,'B');
insert into set1 values(3,'C');
insert into set2 values(4,'D');
insert into set2 values(5,'E');
insert into set2 values(6,'F');
insert into set2 values(7,'G');
insert into set2 values(8,'H');
insert into set2 values(9,'Ha');
insert into set2 values (1,'A');

select*from set1;
select*from set2;

select*from set1 union select*from set2;
select*from set1 intersect select*from set2;
select*from set1 Except select*from set2


create table Acc_details(Acc_number int primary key identity (11112548,1),Acc_name varchar(20),Acc_open_date date,Branch Varchar (20));
select *from Acc_details;

insert into Acc_details values('Shubham','2016/05/20','Mumbai');
insert into Acc_details values('Karan','2015/01/08','Pune');
insert into Acc_details values('Tara','2014/11/16','Delhi');
insert into Acc_details values('Seema','2013/09/01','Chennai');
insert into Acc_details values('Raju','2017/03/24','Meeraj');
insert into Acc_details values('Amit','2019/05/18','Goa');
insert into Acc_details values('Lokesh','2018/02/01','Satara');
insert into Acc_details values('Pankaj','2012/05/22','Tamil');
insert into Acc_details values('Babu','GETDATE()','Kerala');
insert into Acc_details values('Shubham','GETDATE()','Indore');

select datediff(yy,'2013/09/01',getdate());

select Acc_number,Acc_name, datediff(yy,Acc_open_date,getdate()) as age from Acc_details;

select datediff(hh,getdate()-1,getdate()+1);
select*, datepart(yy,Acc_open_date) as date_1 from Acc_details where datepart(yy,Acc_open_date)='2018';
select*, datepart(D,Acc_open_date) as date_1 from Acc_details where datepart(D,Acc_open_date)='01';
select*, datepart(mm,Acc_open_date) as date_1 from Acc_details where datepart(mm,Acc_open_date)='05';

select Dateadd(D,-1,getdate());


create table info(Id int, Name varchar (20), Salary int, Dept varchar (20));
select*from info;

insert into info values(101,'Amit',25000,'It');
insert into info values(102,'Sumit',15000,'Ele');
insert into info values(103,'Pumit',35000,'Acc');
insert into info values(104,'Lohit',50000,'Mech');
insert into info values(105,'Lata',45000,'Civil');

select max(salary) from info where salary<(select max(salary) from info where salary<(select max(salary) from info));

create table Student1(Id int,Name varchar (20), Location varchar (20),Lang varchar (20));

select *from Student1;
insert into Student1 values(1,'Sumit','Maharastra','Marathi');
insert into Student1 values(2,'Amit','Delhi','Hindi');
insert into Student1 values(3,'Lohit','Maharastra','Marathi');
insert into Student1 values(4,'Punit','kerala','Marathi');
insert into Student1 values(5,'Babit','Maharastra','tamil');

select name from Student1 where location !='Maharastra'(select name from Student1 where lang in ('Hindi','Marathi'));

create table customer1(C_ID varchar (20) primary key,C_Name varchar (20),Location varchar (20));

select *from customer1;
insert into customer1 values('C1','Amit','Pune');
insert into customer1 values('C2','Sumit','Mumbai');
insert into customer1 values('C3','Punit','Delhi');
insert into customer1 values('C4','Rahul','Satara');
insert into customer1 values('C5','Karan','Chennai');
Insert into customer1 values ('C6','Tarun','Agra');

Create table OSD (O_ID int primary key,CID varchar (20),Groceries varchar (20));
Select*from OSD;

insert into OSD values(1,'C2','Milk');
insert into OSD values(2,'C1','Sugar');
insert into OSD values(3,'C3','Tea');
insert into OSD values(4,'C2','Curd');
insert into OSD values(5,'C4','Salt');
insert into OSD values (6,'C2','Ghee');
select*from customer1 where not exists (select *from OSD where customer1.C_ID=OSD.CID);
select*from customer1 where  exists (select *from OSD where customer1.C_ID=OSD.CID);

create table A(Aid int,Name varchar (20));
create table B(Bid int, Name varchar (20),Aid int);

select *from A;
select*from B;

insert into A values(1,'Sumit');
insert into A values(2,'Amit');
insert into A values(3,'Rohit');
insert into A values(4,'Lohit');
insert into A values(5,'Punit');


insert into B values(11,'Rohit',3);
insert into B values(12,'Lohit',4);
insert into B values(13,'Punit',5);
insert into B values(14,'Karan',6);
insert into B values(55,'Arun',7);
create table C(Cid int,Name varchar (20),Bid int);
select *from C;
insert into  C values (21,'Punit',13);
insert into  C values (22,'karan',14);
insert into  C values (23,'Arun',55);
insert into  C values (24,'Lata',15);
insert into  C values (25,'Tara',16);

Select *from A join B on A.Aid=B.Aid join C on B.Bid=C.Bid;

select *from A join B on A.Aid=B.Aid;
select A.Aid,B.name from A join B on A.Aid=B.Aid;
select A.Aid from A join B on A.Aid=B.Aid;
select * from A left join B on A.Aid=B.Aid;
select * from A right join B on A.Aid=B.Aid;
select * from A full join B on A.Aid=B.Aid;

create table A1(AId int);

create table B1(BId int);
select*from A1;
select*from B1;
insert into A1 values(1);
insert into A1 values(1);
insert into A1 values(null);
insert into B1 values(1);
insert into B1 values(1);
insert into B1 values(1);
insert into B1 values(null);
insert into B1 values(null);

select*from A1 join B1 on A1.Aid=B1.Bid;

create table Emp_new(id int,Name varchar (20),Company varchar (20),Work varchar (20));
select *from Emp_new;
insert into Emp_new values(1,'Amit','Info','Pune');
insert into Emp_new values(2,'Sumit','Tcs','Mumbai');
insert into Emp_new values(3,'Rohit','Tech','Pune');
insert into Emp_new values(4,'Mohit','Logic','Nagpur');
insert into Emp_new values(5,'Punit','Lem','Nagar');

create table job (salary int,Base varchar(20),Id int);
select*from Job;
insert into job values(10000,'Pune',1);
insert into job values(20000,'Mumbai',3);
insert into job values(30000,'Nagpur',4);
insert into job values(40000,'Pune',5);
insert into job values(35000,'Nagar',2);

select *from Emp_new,job where Emp_new.id=job.id;
select *from Emp_new,job where Emp_new.id=job.id and Emp_new.work=job.Base;

select*from A cross join B cross join C;

create table self_test(EID int,EName varchar (20),ManagarID varchar (20));
select *from Self_test;

insert into self_test values(1,'Shivam',2);
insert into self_test values(2,'Krishna',4);
insert into self_test values(3,'Meera',null);
insert into self_test values(4,'Radha',2);
insert into self_test values(5,'Bala',1);

select *from self_test as T1 ,self_test T2 where T1.EID=T2.ManagarID;


create table info1(Id int, Name varchar (20),age int,salary int,Gender varchar (20),Dept varchar (20));
select *from info1;

insert into info1 values(1,'Amit',29,25000,'M','Mech');
insert into info1 values(2,'Sumit',29,100000,'M','Civil');
insert into info1 values(3,'Rohit',30,50000,'M','DE');
insert into info1 values(4,'Punit',30,45000,'M','ElE');
insert into info1 values(5,'Lohit',31,30000,'M','SC');
insert into info1 values(6,'Rohan',31,20000,'M','Bom');
insert into info1 values(7,'Babu',32,30000,'M','BSE');
insert into info1 values(8,'Arun',32,55000,'M','BE');
          
select *,row_number () over (order by age desc) as new_row from info1;

select*,rank() over (order by age desc) as new_rank from info1;
select*,Dense_rank() over (order by age desc) as new from info1
select *,row_number () over (order by age desc) as new_row,rank() over (order by age desc) as new_rank,Dense_rank() over (order by age desc) as new from info1