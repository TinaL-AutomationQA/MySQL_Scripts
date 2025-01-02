-- create viewdepartment_id
select * from employees;
create view employees_vw as select employee_id,first_name,salary from employees;
select * from employees_vw;
drop view employees_vw;
-- create index
create index index_employees on employees(first_name); 
drop index index_employees on employees;