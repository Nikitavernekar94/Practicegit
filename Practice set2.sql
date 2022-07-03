create table Table1(id int);
select *from Table1;
insert into Table1  values(1);
insert into Table1  values(1);
insert into Table1  values(null);

create table Table2(id int);
select *from Table2;
insert into Table2 values(1);
insert into Table2 values(1);
insert into Table2 values(1);
insert into Table2 values(null);
insert into Table2 values(null);

select *from Table1 join Table2 on Table1.id=Table2.id;
select *from Table1 left join Table2 on Table1.id=Table2.id;
select *from Table1 right join Table2 on Table1.id=Table2.id;
select *from Table1 full join Table2 on Table1.id=Table2.id;
select *from Table1 as t1,Table2 as t2 where t1.id=t2.id;
select*from Table1,Table2 where table1.id=table2.id;
select*from Table1 cross join Table2;

