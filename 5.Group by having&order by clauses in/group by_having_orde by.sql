use hr;
select * from employees where year(hire_date)=1993;
select * from employees;
select * from employees where department_id=20;
-- group by
select department_id,sum(salary) from employees group by department_id;
select department_id,avg(salary) from employees group by department_id;
select department_id,max(salary) from employees group by department_id;
select department_id, count(first_name) as num from employees group by department_id;
select distinct(department_id) as ID from employees;
select * from employees where department_id='20';
select department_id,max(salary),min(salary) from employees group by department_id;
select job_id,count(*) from employees group by job_id;
select department_id,count(*) from employees group by department_id;
select department_id,job_id,sum(salary)from employees group by department_id,job_id;
-- having filter the output
select job_id,count(*) from employees group by job_id having count(*)>"20";
select department_id,sum(salary) from employees where department_id<>50 group by department_id;
select department_id,sum(salary) from employees group by department_id having sum(salary)>20000;
select department_id,sum(salary) from employees where department_id>30 group by department_id having sum(salary)>20000;
-- order by used to arrange the rows
select * from employees order by department_id desc;
select * from employees order by salary;
use hr;
select department_id,sum(salary) from employees where department_id>"50" group by department_id having sum(salary)>="20000" order by department_id desc;