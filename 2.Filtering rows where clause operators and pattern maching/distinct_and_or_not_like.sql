use hr;
select * from employees;
select * from employees where salary>3000;
select * from employees where salary<=3000;
select * from employees where department_id=30; 
select * from employees where commission_pct is null;
select * from employees where first_name='Steven';
-- distinct
select distinct department_id from employees;
select department_id from employees;
select distinct * from employees;
set sql_safe_updates=0;
select * from employees;
-- and or not
select * from employees where salary>5000 and job_id='AD_VP';
select * from employees where salary>5000 or job_id='AD_VP';
SELECT * FROM EMPLOYEES WHERE NOT FIRST_NAME='LEX'; 
select * from employees where salary between 10000 and 12000;
select * from employees where salary not between 10000 and 12000;
select * from employees where salary in (3400,2500,3000);
select * from employees where salary not in (3400,2500,3000);
select * from employees where first_name in ('Steven','Lex','Bruce');
-- like
select * from employees where first_name like 's%';
select * from employees where first_name like '%m';
select * from employees where first_name like '%t%';
select * from employees where first_name like '%e%';
select * from employees where first_name like '%e_';
select * from employees where first_name like '__';
select * from employees where first_name like 'L%x';