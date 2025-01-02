use mydb;
-- drop
drop table student;
create table student
(sid int(4),sname varchar(15));
select * from student;
describe student;
-- insert
insert into student values(101,'david');
insert into student values(102,'smith');
insert into student values(103,'tina');
select * from student;
commit;
-- alter 
alter table student add(mark varchar(2));
select * from student;
describe student;
alter table student drop column mark;
alter table student modify column sname varchar(20);
alter table student rename column sname to stuname;

