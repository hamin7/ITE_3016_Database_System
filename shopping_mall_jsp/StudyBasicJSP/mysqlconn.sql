show databases;

create table member(
id varchar(50) not null primary key,
passwd varchar(16) not null,
name varchar(10) not null,
reg_date datetime not null,
address varchar(100) not null,
tel varchar(20) not null
);

create table juventus(
num varchar(5) not null primary key,
nation varchar(10) not null,
position varchar(5) not null,
name varchar(50) not null,
birthday datetime not null,
height varchar(10) not null,
weight varchar(10) not null
);


insert into member(id, passwd, name, reg_date, address, tel)
values('Federico@gmail.com','0233','Federico',now(),'Corso Gaetano Scirea, 50, Turin, Italy','010-2482-8229');

insert into member(id, passwd, name, reg_date, address, tel)
values('Mattia@gmail.com','0513','Mattia',now(),'Via Piccolomini 5, 20151, Milan, Italy','010-0513-2011');

update member set tel = '010-0233-2018' where id='Federico@gmail.com';

desc member;
desc juventus;

select * from member;
select * from member where id='Federico@gmail.com';
select * from juventus;

select id, name
from member;

delete from member where id='Mattia@gmail.com';
delete from member;

drop table member;

show tables;

insert into juventus(num, nation, position, name, birthday, height, weight)
values('001','Poland','GK','Wojciech Szczęsny','1990.04.18','195cm','90kg');