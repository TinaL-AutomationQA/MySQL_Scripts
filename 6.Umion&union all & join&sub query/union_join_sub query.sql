select * from A;
create table A(sname varchar(10),num int(2));
create table B(num int(2),greade varchar(3));
select * from B;
insert into A values('abc',10);
insert into A values('xyz',11);
insert into A values('pqr',12);
insert into A values('mno',13);
commit;
insert into B values(11,'A');
insert into B values(12,'B');
insert into B values(13,'C');
insert into B values(15,'c');
select num from A UNION SELECT NUM FROM B;
SELECT NUM FROM A UNION ALL SELECT NUM FROM B ORDER BY NUM DESC;
-- equi jion
create table tab1(numid int(3));
create table tab2(numid int(3));
insert into tab1 values('10');
insert into tab1 values('11');
insert into tab1 values('12');
insert into tab1 values('14');
commit;
insert into tab2 values('11');
insert into tab2 values('12');
insert into tab2 values('15');
insert into tab2 values('13');
commit;
-- join
select * from tab1;
select * from tab2;
select * from tab1 inner join tab2 on tab1.numid=tab2.numid;
select * from tab1 right join tab2 on tab1.numid=tab2.numid;
select * from tab2 right join tab1 on tab2.numid=tab1.numid;
select * from tab1 left join tab2 on tab1.numid=tab2.numid;
use hr;
select * from departments;
select * from employees;

select employee_id,first_name,salary, emp.department_id from employees emp inner join departments dep on emp.department_id=dep.department_id order by department_id desc;
-- select from--》jion on--》where--》having--》order by
select employee_id,first_name,salary, emp.department_id from employees emp inner join departments dep on emp.department_id=dep.department_id where emp.department_id>"20" having salary>"10000" order by department_id desc;
-- self jion
select e.employee_id, m.manager_id, m.first_name from employees e,employees m where e.employee_id=m.manager_id;
-- sub query
select salary from employees where first_name="ellen";
select salary,first_name from employees where salary<10000.00;
select salary,first_name from employees where salary<(select salary from employees where first_name="ellen") order by salary;
select max(salary) from employees where salary<(select max(salary) from employees);
select max(salary) from employees where salary<(select max(salary) from employees where salary<(select max(salary) from employees));
select salary from employees order by salary desc;
select * from employees where salary>(select salary from employees where employee_id="150");
-- multi row sub queries
select * from employees where salary in(select salary from employees where department_id=30);
select * from employees where salary>any(select salary from employees where department_id=30);
select * from employees where salary<any(select salary from employees where department_id=30);
select * from employees where salary>all(select salary from employees where department_id=30);
select first_name,employee_id,department_id,(select department_name from departments where employees.department_id=departments.department_id) dname from employees;
select employee_id,first_name,salary,hire_date from employees where salary<(select max(salary) from employees) and hire_date>(select hire_date from employees where salary=(select max(salary) from employees));