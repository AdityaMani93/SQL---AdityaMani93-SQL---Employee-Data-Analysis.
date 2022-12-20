create database less_8_project;
use less_8_project;
select f_name, salary from less_8_project.employee where salary > ( select salary from less_8_project.employee where l_name = 'kumar');
select emp_id, l_name from less_8_project.employee where salary > ( select avg(salary) from less_8_project.employee);
select emp_id, f_name, salary from less_8_project.employee where salary > all 
( select salary from less_8_project.employee where job_id = 'HP122') order by salary;
select distinct emp_id, f_name, salary from less_8_project.employee a where 
3 >= ( select count(distinct salary) from less_8_project.employee b where b.salary >= a.salary) order by a.salary desc;