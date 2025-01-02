use mydb;
set autocommit=0;
create table student10(sid int(3),sname varchar(15));
insert into student10 values(101,'tina');
insert into student10 values(102,'richard');
insert into student10 values(103,'hammer');
select * from student10;
insert into student10 values(104,'ti');
rollback;
insert into student10 values(104,'ti');
commit;
rollback;-- after commit cannot rollback