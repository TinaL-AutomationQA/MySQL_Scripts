use hr;
select first_name from employees;
select upper('smith');/*transfer smith to upper case */
select upper(first_name) from employees;/*transfer first_name to upper case*/
select lower(first_name) from employees;/*transfer first_name to lower case*/
select length('welcom');/*display the length of welcom*/
select length(first_name) from employees;/*display the length of first_name*/
-- print names of employees whose name has 4 characters
select * from employees where length(first_name)=4;
select trim('    welcome    ');
select trim('z' from 'zzoraclezz');
select trim('z' from 'zzoralezz') from dual;
use hr;
select substr(first_name,1,3) from employees;/*Display the first three letters */
select concat(first_name,last_name) ename from employees;/*combine name*/
select concat('oracle','training');
select concat(first_name,last_name) ename from employees;
select first_name,last_name from employees;
-- numeric function
select abs(-40);
select abs(40);
select sqrt(25);
select sqrt(64);
select mod(10,3);
select mod(10,2);
select mod(8,3);
select power(2,5);
select power(2,4);
select power(3,2);
select truncate(234.45345,3);/*Take three decimal*/
select truncate(2345.504,-2);/*2300*/
select greatest(100,200,300,400);
select least(100,200,300);
select * from employees;
select max(salary) max_salary from employees;
select first_name,last_name from employees where salary=2400;
select curdate();
select now();
select sysdate();
select month("2015-05-17");
select * from employees;
select * from employees where year(hire_date)=1987;
select * from employees where month(hire_date)=6;
select * from employees where monthname(hire_date)='june';
-- aggregate function
select avg(SALARY) FROM EMPLOYEES;/*Statistical average wage*/
SELECT min(SALARY) FROM EMPLOYEES;/*Show minimum wage*/
SELECT MAX(SALARY) FROM EMPLOYEES;/*Show maximum wage*/
SELECT COUNT(*) FROM EMPLOYEES;/*Count the number of employees*/
SELECT * FROM EMPLOYEES;
select first_name,employee_id,hire_date from employees;
select first_name,employee_id from employees where salary=(SELECT MAX(SALARY) FROM EMPLOYEES);