use hr;
-- 1.Display all the information of the EMP table? 
select * from employees; 

-- 2.Display unique Jobs from EMP table? 
select distinct job_id from employees;

-- 3.List the emps in the asc order of their Salaries? 
select * from employees order by salary;

-- 4.List the details of the emps in asc order of the Dptnos and desc of Jobs? 
select * from employees order by job_id;
select * from employees order by department_id;

-- 5. Display all the unique job groups in the descending order? 
select distinct job_id from employees order by job_id desc;

-- 6. Display all the details of all ‘department-id=100’  
select * from employees where department_id=100;

-- 7. List the emps who joined before 1991. 
select * from employees where year(hire_date)<1991;

-- 8.List the Empno, Ename, Sal, Daily sal of all emps in the asc order of Annsal. 
select employee_id,last_name,salary,salary/30 as daily_salary,salary*12 as annsal from employees order by annsal;

-- 9.Display the Empno, Ename, job, Hiredate, Exp of all Mgrs
select employee_id, last_name,hire_date, year(now())-year(hire_date) as expe from employees where job_id='ST_MAN';

-- 10. List the Empno, Ename, Sal, Exp of all emps working for Mgr 100.
select employee_id,last_name,salary,year(now())-year(hire_date) as expe from employees where manager_id=100;

-- 11.Display all the details of the emps whose sal Is more than their 9000.
select *from employees where salary>9000;

-- 12.List the emps in the asc order of Designations of those joined after the second half of 1981. 
select * from employees where hire_date>'1987-07-01' order by job_id;

-- 13. List the emps along with their Exp and Daily Sal is more than Rs.100. 
select last_name, year(now())-year(hire_date) as expe, salary/30 as daily_salary from employees having daily_salary>100;

-- 14. List the emps who are either ‘CLERK’ or ‘ANALYST’ in the Desc order. 
select * from employees where job_id in('PU_CLERK','ST_CLERK') order by job_id desc;

-- 15.List the emps who joined on 1-MAY-81,3-DEC-81,17-DEC-81,19-JAN-80 in asc order of seniority. 
select * from employees where hire_date in('1989-07-01','1999-01-14','2000-03-08') order by hire_date;

-- 16.List the emp who are working for the Deptno 10 or20. 
select * from employees where department_id in(10,20);

-- 17. List the emps who are joined in the year 1996. 
select * from employees where year(hire_date)=1996;

-- 18. List the emps who are joined in the month of Aug 1980.
select * from employees where month(hire_date)=8 and year(hire_date)=1980;

-- 19.List the emps Who Annual sal ranging from 22000 and 45000. 
select * from employees where salary*12 between 22000 and 45000;

-- 20.List the Enames those are having five characters in their Names. . 
select * from employees where length(last_name)=5;

-- 21. List the Enames those are starting with ‘S’ and with five characters. 
select *from employees where last_name like 'S%' and length(last_name)=5;

-- 22.List the emps those are having 5 chars and third character must be ‘r’.
select *from employees where length(last_name)=5 and last_name like '__r%';

-- 23. List the Five character names starting with ‘S’ and ending with ‘H’. 
select *from employees where last_name like 'S%H' and length(last_name)=5;

-- 24.List the emps who joined in January. 
select *from employees where month(hire_date)=1;

-- 26. List the emps whose Sal is four digit number ending with Zero. *****
select *from employees where salary between 1000 and 9999 and  salary%10 =0;

-- 27. List the emps whose names having a character set ‘ll’ together. 
select * from employees where last_name like '%LL%';

-- 28.List the emps those who joined in 80’s.
select * from employees where year(hire_date) between 1980 and 1989;

-- 29. List the emps who does not belong to Deptno 20. 
select * from employees where not department_id=20;

-- 30.List all the emps except ‘ST_MAN’ & ‘ST_CLERK” in asc order of Salaries. 
select * from employees where not job_id in ('ST_MAN','ST_CLERK') order by salary;

-- 31. List all the emps who joined before or after 1981. 
select * from employees where year(hire_date)!=1981;

-- 32.List the emps whose Empno not starting with digit10.
select * from employees where not cast(employee_id as char) like '10%';

-- 33.List the emps who are working under ‘manager_id 108’. 
select * from employees where manager_id=108;

-- 34.List the emps who joined in any year but not belongs to the month of March. 
select * from employees where month(hire_date) !=3;

-- 35.List all the ST_CLERK of Deptno 50. 
select * from employees where job_id='ST_CLERK' and department_id=50;

-- 36.List the emps of Deptno 30 or 10 joined in the year 1981.
select * from employees where department_id in (30,50) and year(hire_date)=1997;
select * from employees;

-- 37.Display the details of SMITH. 
select * from employees where last_name='smith';

-- 38.Display the location of  SMITH. *****
select * from departments;
select * from locations;
select e.first_name,e.last_name, d.department_id, l.city as location 
from employees e 
join departments d on e.department_id=d.department_id
join  locations l on d.location_id=l.location_id 
where last_name='smith';

-- 39. List the total information of EMP table along with DNAME and Loc of all the emps Working Under ‘ACCOUNTING’ & ‘RESEARCH’ in the asc Deptno.
select e.* , d. department_name as Dname, l.city as location from employees e
join departments d on e.department_id=d.department_id
join locations l on d.location_id=l.location_id where department_name in('Accounting', 'IT') order by department_id;

-- 40. List the Empno, Ename, Sal, Dname of all the ‘MGRS’ and ‘ANALYST’ working in New York, Dallas with an exp more than 7 years without receiving the Comm asc order of Loc. 
select *from employees;
select e.employee_id as Empno, e.last_name as Ename, e.salary as Sal,d.department_name as Dname,l.city from employees e
join departments d on e.department_id=d.department_id
join locations l on d.location_id=l.location_id where department_name in('Sales','Marketing') and city in('Toronto','London') and year(now())-year(hire_date)>7 and commission_pct is null order by city;

-- 41. List the Empno, Ename, Sal, Dname, Grade, Exp, and Ann Sal of emps working for Dept10 or20. 
select e.employee_id as Empno, e.last_name as Ename, e.salary, d.department_name as Dname, year(now())-year(hire_date) as EXP, salary*12 as Ann_sal from employees e
join departments d on e.department_id=d.department_id where d.department_id in(10,20);

-- 42. List the details of the emps whose Salaries more than the employee BLAKE. 
select * from employees where salary>(select salary from employees where last_name='seo');

-- 43. List the emps whose Jobs are same as ALLEN. 
Select * from employees where job_id=(select job_id from employees where last_name='CHEN');

-- 44.List the emps who are senior to King. 
select * from employees where hire_date<(select hire_date from employees where last_name='chen');

-- 45. List the Emps of Deptno 20 whose Jobs are same as Deptno10. 
select * from employees where department_id=20 and job_id in(select job_id from employees where department_id=10);
select e1.* from employees e1 join employees e2 on e1.department_id=e2.department_id where e1.department_id=10 and e2.department_id=20;

-- 46.  List the Emps whose Sal is same as FORD or SMITH in desc order of Sal. 
select * from employees where salary in (select salary from employees where last_name in('Kochhar','Austin')) order by salary desc;

-- 47. List the emps Whose Jobs are same as MILLER or Sal is more than ALLEN. 
select * from employees where job_id=(select job_id from employees where last_name='kochhar') or salary>(select salary from employees where last_name='ernst');

-- 48. List the emps who are senior to BLAKE working at CHICAGO & BOSTON. 
select e.last_name , l.city, year(now())-year(hire_date) as expe from employees e
join departments d on e.department_id=d.department_id
join locations l on d.location_id=l.location_id where year(now())-year(hire_date)>(select year(now())-year(hire_date) from employees where last_name='blake') and l.city in ('chicago','boston');

-- 49.Any jobs of deptno 10 those that are not found in deptno 20. 
select distinct e1.job_id from employees e1 left join employees e2 on e1.department_id=e2.department_id and e2.department_id=20 where e1.department_id=10 and e2.job_id is null;

-- 50. Find the highest sal of EMP table. 
select max(salary) from employees;

-- 51.Find details of highest paid employee. 
select * from employees where salary=(select max(salary) from employees);

-- 52.  Find the highest paid employee of sales department. 
select* from employees where salary=(select max(salary) from employees where department_id=(select department_id from departments where department_name='Sales'));
select * from departments;

-- 53.List the most recently hired emp belongs to  location CHICAGO.
select * from employees e 
join departments d on e.department_id=d.department_id
join locations l on d.location_id=l.location_id 
where city='toronto'
order by hire_date desc
limit 1;
select * from locations;

-- 54. List the employees who are senior to most recently hired employee working under king. 
select * from employees where hire_date<(select max(hire_date) from employees) and manager_id in(select e1.manager_id from employees e1, employees e2 where e1.employee_id=e2.manager_id and e1.last_name='king');
SELECT * 
FROM employees 
WHERE hire_date < (
    SELECT MAX(hire_date) 
    FROM employees
) 
AND manager_id in (
    SELECT employee_id 
    FROM employees 
    WHERE last_name = 'king'
);
select * from employees;
select * from departments;

-- 55. List the details of the senior employee belongs to 1981. 
select * from employees where hire_date=(select min(hire_date) from employees where year(hire_date)=1991);

-- 56.List the employees who joined in 1981 with the job same as the most senior person of the year 1981. 
select * from employees where job_id=(select job_id from employees where hire_date=(select min(hire_date) from employees where year(hire_date)=1991));

-- 57.Find the total sal given to the IT_PROG. 
select sum(salary) from employees where job_id='IT_PROG';

-- 58.Find the total annual sal to distribute job wise in the year 81. 
select job_id,sum(salary*12) as annual_sal from employees where year(hire_date)=1991 group by job_id;

-- 59.Display the average salaries of all the clerks.
select avg(salary) from employees where job_id='PU_CLERK';

-- 60.List the employee in dept 20 whose sal is >the average sal 0f dept 10 emps. 
select * from employees where department_id=20 and salary>(select avg(salary) from employees where department_id=10);

-- 61.Display the number of employee  for each job group deptno wise. 
select count(employee_id),department_id from employees group by department_id;

-- 62. List the manage rno and the number of employees working for those mgrs in the ascending Mgrno. 
select count(employee_id), manager_id from employees group by manager_id order by manager_id;

-- 63. List the department,details where at least two emps are working 
select count(employee_id) as num,department_id from employees group by department_id having num>2;

-- 64. Display the department, Number of emps, and max sal of each department. 
select department_id, count(employee_id), max(salary) from employees group by department_id;

-- 65.Display dname, grade, No. of emps where at least two emps are clerks. 
select department_id, count(employee_id),count(job_id) from employees where job_id like'%clerk%' group by department_id  having count(job_id)>2;

-- 66.List the details of the department where maximum number of emps are working. 
select * from departments where department_id in (select department_id from employees group by department_id having count(*) in (select max(count(*))from employees group by department_id));

-- 67. Display the emps whose manager name is jones. 
select * from employees;
select * from departments;

-- 68.List the employees whose salary is more than 3000 after giving 20% increment. 
select* from employees where (1.2*salary)>3000;

-- 69.List the emps with dept names. 
select  employee_id, first_name, last_name, department_name from employees e join departments d  on e.department_id=d.department_id;

-- 70. List the emps who are not working in sales dept.
select * from employees where department_id !=(select department_id from departments where department_name='sales');

-- 71. List the emps name ,dept, sal and comm. For those whose salary is between 2000 and 5000 while loc is Chicago. 
select first_name, department_name,salary,commission_pct from employees e
join departments d on e.department_id=d.department_id
join locations l on d.location_id=l.location_id
where salary between 2000 and 50000 and city='chicago'; 

-- 72.List the emps whose sal is greater than his managers salary
select * from employees e1, employees e2 where e1. manager_id=e2.employee_id and e1.salary>e2.salary;

-- 73.List the name ,job, dname, location for those who are working as MGRS. 
select first_name,job_id,department_name,city from employees e 
join departments d on e.department_id=d.department_id 
join locations l on d.location_id=l.location_id 
where employee_id in(select manager_id from departments);

-- 74. List the emps name, job  who are with out manager. 
select * from employees where  manager_id is null;

-- 75. List the names of the emps who are getting the highest sal dept wise. 
select first_name from employees where salary in(select  max(salary) from employees group by department_id);

-- 76.List the emps whose sal is equal to the average of max and minimum 
select * from employees where salary=(select(max(salary)+min(salary))/2 from employees);

-- 77. List the no. of emps in each department where the no. is more than 3.
select count(employee_id),department_id from employees group by department_id having count(employee_id)>3; 

-- 78.List the names of depts. Where atleast 3 are working in that department. 
select d.department_name, count(e.employee_id) as count1 from departments d,employees e 
where d.department_id=e.department_id
group by d.department_name
having count1>3;

-- 79. List the managers whose sal is more than his employess avg salary.
select * from employees m where m.employee_id in(select manager_id from employees)
and m.salary>(select avg(e.salary)from employees e where e.manager_id=m.manager_id);

-- 80.List the emp whose sal<his manager but more than any other manager. 
select * from employees w, employees m where w.manager_id=m.employee_id and w.salary<m.salary 
and w.salary>any(select salary from employees where employee_id in(select manager_id from employees));

-- 81.Find out emps whose salaries greater than salaries of their managers. 
select * from employees m1,employees m2 where m1.manager_id=m2.employee_id and m1.salary>m2.salary;

-- 82.List those Emps whose Salary is odd value. 
select * from employees where salary%2 !=0;

-- 83.List the emp’s whose Salary contain 3 digits. 
use hr;
select * from employees where length(salary)=3;

-- 84.List the emps who joined in the month of DEC. 
select * from employees where month(hire_date)=12;

-- 85.List the emps whose names contains ‘A’.
select * from employees where first_name like '%A%';

-- 86. List the emps whose first 2 chars from Hiredate=last 2 characters of Salary.
select * from employees where substr(hire_date,1,2)=substr(salary,length(salary)-1,length(salary));

-- 87.List the emps those who joined in company before 15th of the month. 
select * from employees where day(hire_date)<15;

-- 88.List the emps who are working as Managers. 
select * from employees where employee_id in(Select manager_id from employees);


