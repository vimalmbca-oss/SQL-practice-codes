create database joins;
use joins;
create table branch(br_id int primary key auto_increment,br_name varchar(50)not null,br_addr varchar(400));
insert into branch values(1,"chennai","16 abc road");
insert into branch values(2,"salem","16 abc road");
insert into branch values(3,"nammakal","16 abc road");
insert into branch values(4,"combitore","16 abc road");
insert into branch values(5,"sinna salem","main road");

create table employee(emp_id int primary key auto_increment,emp_name varchar(40)not null,job_desc varchar(30),
salary int,br_id int,constraint fk_brancherid foreign key(br_id)references branch(br_id));
insert into employee values(101,"vimal","manager",50000,1);
insert into employee values(102,"raja","TL",30000,2);
insert into employee values(103,"kannan","datadevp",25000,2);
insert into employee values(104,"kumar","fdevp",20000,4);
insert into employee values(105,"rani","ldevp",20000,3);
insert into employee values(106,"dharshan","cybersec",35000,3);
insert into employee values(107,"kishore","admine",40000,1);
insert into employee values(108,"jeeva","dataA",50000,null);
insert into employee values(109,"saro","javad",40000,null);

select employee.emp_id,employee.emp_name,employee.job_desc,branch.br_name from employee
inner join branch
on employee.br_id=branch.br_id
order by employee.emp_id;

select employee.emp_id,employee.emp_name,employee.job_desc,employee.salary,branch.br_name,branch.br_addr from employee
left join branch
on employee.br_id=branch.br_id
order by employee.emp_id;

select employee.emp_id,employee.emp_name,employee.job_desc,employee.salary,branch.br_name,branch.br_addr from employee
right join branch
on employee.br_id=branch. br_id
order by employ;

select e.emp_id,e.emp_name,e.emp_name,e.job_desc,e.salary,b.br_name,b.br_addr from employee as e
inner join branch as b
on e.br_id=b.br_id
order by e.emp_id;

select employee.emp_id,employee.emp_name,employee.job_desc,employee.salary,branch.br_name,branch.br_addr 
from employee,branch
where employee.br_id=branch. br_id
order by employee.emp_id;

select employee.emp_id,employee.emp_name,employee.job_desc,employee.salary,branch.br_name,branch.br_addr 
from employee
cross join branch;

select e.*,b.br_name,b.br_addr
from employee e
left join branch b on e.br_id=b.br_id
union
select e.*,b.br_name,b.br_addr
from employee e
right join branch b on e.br_id=b.br_id
limit 1000;

create table company(ep_id int,ep_name varchar(40),manager_id int);
insert into company values(2,"vimal",3);