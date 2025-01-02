create database mybd; -- create database
drop database mybd; -- drop database
create schema mydb; -- create scheme
drop schema mydb; -- drop scheme
create database mydb;
create database if not exists mydb; -- create database if not exitss
use mydb; -- use database
create table student(sno int(5),sname varchar(15),marks int(3)); -- create table
create table student1 
(sno int(5),
sname varchar(15),
marks int(3));
describe student; -- describe table
insert into student values(101,'kina',88); -- insert 
select * from student;
insert into student(sname,sno,marks) values('tina',102,76);
select * from student;
insert into student values(103,'richard', null);
use hr; -- use database hr
select * from employees;
select employee_id,first_name,last_name,salary from employees;
select employee_id empid,first_name fname,last_name lname,salary sla from employees;
select employee_id,first_name,last_name,salary+300 from employees;