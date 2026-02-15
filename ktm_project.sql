create database ktm_bikes;
use ktm_bikes;
create table models(bike_id int auto_increment primary key,
Bike_model varchar(100),
exshowroom_price int,
onraod_price int);

insert into models values(1,"duke125",180000,215000),
(2,"duke200",210000,235000);

create table customers(cus_id int auto_increment primary key,
cus_name varchar(100) not null,
phone_no varchar(15) not null,
email_id varchar(200) not null,
bike_id int,constraint Fk_branckid foreign key(bike_id) references models(bike_id),
br_id int,constraint F_branckid foreign key(br_id) references branch(br_id));

drop table customers;

insert into customers values(1,"vimal",1243567890,"vimal@gmail.com",2,1),
(2,"vimalkumar",4312567809,"vimalkk@gmail.com",1,2);
insert into customers values(3,"vimalkumar",4312567809,"vimalkk@gmail.com",1,2),
(4,"vimalkumar",4312567809,"vimalkk@gmail.com",1,2);
 
 
 select customers.cus_name,customers.phone_no,models.bike_model from customers inner join models
 on customers.bike_id=models.bike_id order by customers.cus_id;
 
create table branch(br_id int auto_increment primary key,
br_name varchar(100));


insert into branch values(1,"salem"),
(2,"namakalla");

select customers.cus_name,customers.phone_no,branch.br_name from customers inner join branch
on customers.br_id=branch.br_id order by customers.cus_id;

create table delivey(delivery_id int auto_increment,
delivery_date date,
payment_type varchar(100),
constraint Fk_branchid foreign key(delivery_id) references customers(cus_id));

insert into delivey values(1,"2025-10-12","EMI"),
(2,"2025-11-22","EMI"),
(3,"2025-07-31","fullcashpayment"),
(4,"2025-09-21","EMI");

select delivey.delivery_date,delivey.payment_type,customers.cus_name from delivey inner join customers
on delivey.delivery_id=customers.cus_id
order by delivery_id;
