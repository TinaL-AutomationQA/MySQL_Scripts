use mydb;
create table student2(sno int(3)not null, sname varchar(15), marks int(5));
describe student2;
insert into student2 values(3,'tina',90);
insert into student2 values(null,'lily',80);-- A message is displayed indicating that the value cannot be empty
create table student3(sno int(3) unique, sname varchar(15),marks int(5));
describe student3;
insert into student3 values(3,'tina',80);
insert into student3 values(3,'tina',80);-- A message is displayed indicating that this cannot be repeated
create table student4(sno int(3),sname varchar(15),marks int(3),unique(sno,sname));
describe student4;
insert into student4 values(3,'tina',80);
insert into student4 values(3,'tina',80);
insert into student4 values(3,'lily',80);
select * from student4;
-- primary key
create table student5(sno int(3)primary key, sname varchar(15), marks int(5));
describe student5;
create table stdent6(sno int(4),sname varchar(15),marks int(5),primary key(sno,sname));
describe stdent6;
create table student7(sno int (3),sname varchar(15),marks int(3),primary key(sno));
insert into student7 values(101,'tina',80);
insert into student7 values(102,'rainbow',90);
insert into student7 values(103,'richard',100);
insert into student7 values(null,'mike',102); -- The primary key cannot be empty and cannot be repeated.
select * from student7;
-- foreign key
create table library(sno int(3),foreign key(sno) references student7(sno),book varchar(15));
insert into library values(102,'c');
insert into library values(108,'mysql');-- Can't write, there will be an error message because 108 is not in student7
insert into library values(null,'java');-- Can be null
-- foreign key constraint at table level
create table school(sno int(3),sname varchar(15),marks int(3),primary key(sno));
insert into school values(101,'tk',50);
insert into school values(102,'ed',80);
insert into school value(103,'li',78);
create table library1(rollno int(3),book_name varchar(10),foreign key(rollno) references school(sno) on delete cascade);
insert into library1 values(101,'de');
insert into library1 values(102,'kl');
-- check constraint
create table student8(sno int(5),marks int(5) check(marks between 50 and 100));
insert into student8 values(8,78);
insert into student8 values(3,45);-- There will be an error message, the range 45 is not between 50 and 100
insert into student8 values(54,null); -- Can be null
select * from student8;
create table location(city varchar(15) check(city in ("shanghai","guangzhou","beijing")),country varchar(15));
create table orders (ID int(5), order_number int(5),orderDate datetime default now());
insert into orders (ID,order_number) values(01,010);
select * from orders;
