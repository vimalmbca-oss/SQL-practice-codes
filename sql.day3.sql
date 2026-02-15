use company;
select count(*)from emp;
select count(*)name from emp;
select count(*) from emp where job_desc="TL";
select count(*) from emp where job_desc="fdeveloper";

select avg(salary)from emp where job_desc="fdeveloper"; 

select sum(salary) from emp where job_desc="fdeveloper";

select max(salary) from emp;

select min(salary) from emp;

select ucase(name)from emp;
select lcase(name) from emp;
select ucase(name)name,salary from emp;

select name,char_length(name)char_count from emp;

select job_desc,concat('rs.',salary)from emp;

select name,concat('rs.',format(salary,0))from emp;

select*,left(name,3)from emp;

alter table emp add column hire_date date;
set sql_safe_updates=0;
update emp set hire_date="2014-07-05";
update emp set hire_date="2015-08-06"where job_desc="fdeveloper";

select now();
select date(now());

select date_format(curdate(),"%d-%m-%y");
select date_format(curdate(),"%d-%m-%y")as date;
select datediff(curdate(),"2025/01/01")as day;
select date_add(curdate(),interval 1 year) as 'after one year';


drop database ktm;