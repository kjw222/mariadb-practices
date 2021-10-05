drop table member;
create table member(
no int(11) not null auto_increment,
email varchar(200) not null,
password varchar(20) not null,
name varchar(100) not null,
department varchar(100),
primary key(no)
);
desc member;

alter table member add juminbunho char(13) not null after email;
desc member;
alter table member drop juminbunho;
desc member;
alter table member add join_date datetime not null;
desc member;
alter table member change department department varchar(100) not null;
desc member;

alter table member add self_intro text;
desc member;

insert 
into member
values(null, 'sobee1403@gmail.com', password('1234'), '김지원', '개발팀', now(), null);

select * from member;

insert
into member(no, email, password, department, name, join_date)
values(null, 'whffu78@naver.com', password('1234'), '인사팀', '서경혜', now());

-- update
update member
set email='sobee1403@gmail.com', password = password('5678')
where no = 3;
select * from member;

-- delete
delete
from member
where no = 4;
select * from member;

-- transaction
select @@autocommit;
set autocommit=0;


insert into member(no, email, password, department, name, join_date)
values(null, 'whffu78@naver.com', password('1234'), '개발팀5', '김지원', now());

select * from member;