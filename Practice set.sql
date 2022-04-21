create table Workers(id int, name varchar (10),Mobile_no varchar (10),Age int,DOB varchar (10),Salary int,Dept varchar(10));

select *from Workers;

insert into Workers values(101,'Rohit','9858582425',29,'26/08/1998',45000,'It');
insert into Workers values(102,'Mohit','9868562415',26,'22/12/1999',35000,'Ele');
insert into Workers values(103,'Ponit','9128512425',30,'26/08/1994',58000,'Civil');
insert into Workers values(104,'Kavya','8858582405',24,'05/01/2000',25000,'Comp');
insert into Workers values(105,'Rohit','9050082425',29,'26/08/1998',50000,'Mech');

select * from Workers where name='Rohit';
select *from Workers where name !='Kavya';
select *from Workers where salary >35000;
select *from Workers where Age >=26;
select *from Workers where salary <58000;
select *from Workers where Age<=26;


select *from Workers where name='Rohit' and age=29;
select *from Workers where name='Mohit' or age=30;

select *from Workers where name not in ('Rohit','Mohit','Kavya');

select *from Workers where salary between 30000 and 50000;
select*from Workers where name between 'K' and 'P';

select * from Workers where name like '[^k-p]%';
select dept,name from Workers;

select*,Add_salary=salary+2000,Ded_salary=salary-1000,Multiply_salary=Salary*0.05,
Devide_salary=salary/2,Increase2persent=salary+(salary*0.02),Decrese2persent=salary-(salary*0.02) from Workers;


select *from Workers  order by salary desc;
select * from Workers order by salary asc;

Update Workers set name='Soham' where age=30;
select *from Workers;

Update workers set age=28 where name='kavya';

--alter table Workers add City_name varchar(10);

--alter table Worker drop City_name;

select *from Workers;

select max(salary) from Workers;
select Top 2 salary from Workers order by salary asc;
select distinct ('name') from Workers;

create table set1(id int primary key, age int);
insert into set1 values(101,30);
insert into set1 values (101,29);

create table set2(id int, marks int check (marks>41));
select *from set2;
insert into set2 values (102,43);
insert into set2 values (103,45);

create table set3(id int  identity  (22,2), name varchar(10));

insert into set3 values ('Sumant');
insert into set3 values ('Kavita');
insert into set3 values ('Pooja');

select *from set3;


create table set0(id int primary key identity, Name varchar(10));

select *from set0;

insert into set0 values('Ram');
insert into set0 values ('Sumit');
insert into set0 values ('Poonam');
insert into set0 values ('Babu');
insert into set0 values ('Arun');

create table S_0 (S_id int identity, name varchar (10),id int foreign key references set0(id));

select *from S_0;

insert into S_0 values('Pooja',2);
insert into S_0 values ('Rohit',3);
insert into S_0 values ('Soham',1);
insert into S_0 values ('Kavya',4);
insert into S_0 values ('Rahul',5);

select *from S_0;
select *from set0;


select name ,min (salary) from Workers group by name;

select id, max(salary) from workers group by id having max(salary)>30000;

create table TA (id int,name varchar (10));
create table TB(id int, Name varchar (10));
select * from TA;
select *from TB;

insert into TA values(101,'A');
insert into TA values(102,'B');
insert into TA values(103,'C');
insert into TA values(104,'D');
insert into TA values(105,'E');
insert into TA values(106,'F');

insert into TB values(107,'G');
insert into TB values(106,'H');
insert into TB values(105,'I');
insert into TB values(104,'J');
insert into TB values(108,'K');

select *from TA union select *from TB;---Without Duplicate value
select *from TA union all Select *from TB;----With Duplicate value
select *from TA intersect select *from TB;
select *from TA except select*from TB;
select *from TB except select*from TA;


create table Acc_detail(Acc_number int primary key identity(11112881,1), Acc_name varchar (20),Acc_open_date date,Branche varchar (20));

select *from Acc_detail;

insert into Acc_detail values('Rihan','2016/01/12','Jaipur');
insert into Acc_detail values('Sheetal','2017/08/11','Goa');
insert into Acc_detail values('Priyanka','2017/01/01','chennai');
insert into Acc_detail values('Manik','2015/01/08','Agra');
insert into Acc_detail values('Veena','2021/01/01','Patna');
insert into Acc_detail values('Rohan','2019/07/01','Pune');
insert into Acc_detail values('Laxmi',GETDATE(),'Mumbai');
insert into Acc_detail values('jeet',GETDATE(),'Mumbai');


select datediff(yy,12/01/2016,getdate());

select Acc_number,Acc_name,datediff(yy,Acc_open_date,getdate()) as age from Acc_detail;
select datediff(hh,getdate()-1,getdate()+1);

select*from Acc_detail where Acc_open_date in ('2021');

select *,datepart(yy,Acc_open_date) as date1 from Acc_detail where datepart(yy,Acc_open_date)='2021';

select *,datepart(D,Acc_open_date)as date1 from Acc_detail where datepart(D,Acc_open_date)='01';

select dateadd(yy,+30,getdate());
select dateadd(D,+24,getdate());

 
create table D2(Id int primary key identity,Name Varchar(20));
select *from D2;

insert into D2 values('Somit');
insert into D2 values('Romit');
insert into D2 values('Tomit');
insert into D2 values('Pomit');

create table D3 (Did int identity, Name varchar (20),Id int foreign key references D2(Id));
select *from D3;
insert into D3 values('Kavya',2);
insert into D3 values('Savya',3);
insert into D3 values('Tavya',4);
insert into D3 values('Mavya',1);


create table D4 (D_id int ,Name varchar (20));
create table D5 (id int, Name varchar (20));
select *from D4;
select *from D5;
insert into D4 values(101,'Amit');
insert into D4 values(102,'Bushan');
insert into D4 values(103,'Chetan');
insert into D4 values(104,'Dheeraj');
insert into D4 values(105,'Esha');
insert into D4 values(106,'Faran');
insert into D4 values(107,'Ganesh');
insert into D4 values(108,'Dheeraj');

delete D4 where D_id=108;


insert into D5 values(109,'Heena');
insert into D5 values(110,'Ishika');
insert into D5 values(111,'Jeet');
insert into D5 values(112,'Kiran');
insert into D5 values(113,'Leena');
insert into D5 values(114,'Dheeraj');
insert into D5 values(115,'Ganesh');

select *from D4 Union select *from D5;
select *from D4 Union all Select *from D5;
select *from D4 intersect Select *from D5;
select *from D4	except Select *from D5;
select *from D5 except Select *from D4;


create table Acc_d(Acc_number int primary key identity (11245425,1),Acc_name varchar (20),Acc_open_date date,Branch varchar (20));

select *from Acc_d;

insert into Acc_d values('Praveen','2019/12/20','Chennai');
insert into Acc_d values('Kiran','2016/08/21','Chennai');
insert into Acc_d values('Rahul','2017/02/04','Chennai');
insert into Acc_d values('Sudesh','2019/01/19','Chennai');
insert into Acc_d values('Bhushan','2015/03/24','Chennai');
insert into Acc_d values('Arun','2018/08/26','Chennai');
insert into Acc_d values('Soumya','GETDATE()','Chennai');
insert into Acc_d values('Laxmi','GETDATE()','Chennai');


select datediff(mm,'2016/08/21',getdate());
select Acc_number,datediff(yy,Acc_open_date,getdate()) from Acc_d;
select Acc_name,datediff(yy,Acc_open_date,getdate()) from Acc_d;
select Acc_name,Acc_number,datediff(yy,Acc_open_date,getdate()) from Acc_d;
select Acc_name,Acc_number,datediff(mm,Acc_open_date,getdate()) from Acc_d;


select * ,datepart(yy,Acc_open_date) as date1 from Acc_d where datepart(yy,Acc_open_date)='2016';
select*,datepart(D,Acc_open_date) as date1 from Acc_d where datepart (D,Acc_open_date)='24';

select dateadd(yy,+30,getdate());

select dateadd(D,+23,getdate());

select*from workers;

select max(salary) from workers where salary<(select max(salary)from workers);
select max(salary) from workers where salary<(select max(salary) from workers where salary<(select max(salary)from workers));
select max(salary) from workers where salary<(select max(salary) from workers
 where salary<(select max(salary) from workers where salary<(select max(salary)from workers)));
select min(salary) from workers where salary>(select min(salary) from workers 
where salary>(select min(salary) from workers where salary>(select min(salary)from workers)));


create table D6(Id int primary key identity,Name varchar (20),Location varchar (20), Lang varchar (20));
select *from D6;
insert into D6 values('Rohit','Maharastra','Marathi');
insert into D6 values('Mohit','Karnataka','Marathi');
insert into D6 values('Sohit','Naoida','Hindi');
insert into D6 values('Pohit','Odissa','Tamil');
insert into D6 values('Amit','Maharastra','Marathi');
insert into D6 values('Rahit','Maharastra','Marathi');

select name from D6 where location !='Maharastra'(select name from D6 where Lang in('Marathi','Hindi'));


create table cunsumer(C_id varchar (5), Name varchar (20),Location varchar (20));
select *from cunsumer;

insert into cunsumer values('C1','Mohit','Pune');
insert into cunsumer values('C2','Rohit','Mumabi');
insert into cunsumer values('C3','Sohit','Delhi');
insert into cunsumer values('C4','Pohit','kolkatta');
insert into cunsumer values('C5','Lohit','Goa');
insert into cunsumer values('C','Amit','chennai');

create table orders(O_id int primary key identity,Cid varchar (5),Groceries varchar (20));
select *from orders;

insert into orders values('C2','Milk');
insert into orders values('C4','salt');
insert into orders values('C6','Ghee');
insert into orders values('C2','Paneer');
insert into orders values('C1','Curd');
insert into orders values('C5','Tea powder');

select *from cunsumer where exists (select *from orders where cunsumer.C_id=orders.Cid);

select *from cunsumer where not exists (select *from orders where cunsumer.C_id=orders.Cid);

select *from orders where  exists (select *from cunsumer where orders.Cid=cunsumer.C_id);



create table C (D_id varchar (20), Name varchar(20), Location varchar (20));
select *from C;
insert into C values('C1','Rohit','Pune');
insert into C values('C2','mohit','Mumbai');
insert into C values('C3','Sohit','Delhi');
insert into C values('C4','Pohit','Chennai');
insert into C values('C5','Lohit','Kerala');

create table O (Oid int primary key identity,Did varchar (20),Groceries varchar(20));

select *from O;

Insert into O values('C2','Milk');
Insert into O values('C3','Milk');
Insert into O values('C1','Milk');
Insert into O values('C6','Milk');
Insert into O values('C7','Milk');

select *from C where exists (select *from O where C.D_id=O.Did);
select *from C where not exists (select *from O where C.D_id=O.Did);


create table A (Aid int, name varchar (20));
create table B(Bid int, name varchar(20),Aid int);
select*from A ;
Select *from B;
insert into A values(1,'Rohit');
insert into A values(2,'Mohit')
insert into A values(3,'Pohit')
insert into A values(4,'Lohit')
insert into A values(5,'Sohit')

insert into B values (11,'Pohit',3);
insert into B values (12,'Lohit',4);
insert into B values (13,'Sohit',5);
insert into B values (14,'Amit',6);
insert into B values (15,'Sumit',7);

select*from A join B on A.Aid=B.Aid;

select A.Aid,B.name,B.Bid from A join B on A.Aid=B.Aid;

select A.Aid ,A.name from A left join B on A.Aid=B.Aid;

select *from A left join B on A.Aid=B.Aid;

select A.Aid,B.Bid from A right join B on A.Aid=B.Aid;

create table C0 (Cid int, Name varchar (20),Bid int);
select *from C0;
insert into C0 values (21,'Kavya',13);
insert into C0 values (22,'Tavya',14);
insert into C0 values (23,'Maya',15);
insert into C0 values (24,'Kavita',16);
insert into C0 values (25,'Soumya',17);


select *from A right join B on A.Aid=B.Aid right join C0 on B.Bid=C0.Bid;

select *from A full join B on A.Aid=B.Aid;