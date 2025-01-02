-- auto increment
use mydb;
create table student9
(sno int(3) primary key auto_increment,
sname varchar(15),marks int(5));

insert into student9(sname,marks) values('tina',50);
insert into student9(sname,marks) values('mike',80);
select* from student9;
alter table student9 auto_increment=100;
insert into student9(sname,marks) values('richard',100);
delete from student9 where sno=2;
insert into student9(sname,marks) values('lily',88);
-- limit
use hr;
select * from employees limit 10;/*limit 10 rows*/
select * from employees limit 5,10;