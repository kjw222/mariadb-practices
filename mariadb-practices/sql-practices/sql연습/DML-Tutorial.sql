#Basic Query
#테이블 삭제
drop table pet;

create table pet(
	name varchar(20),
    owner varchar(20),
    sepecies varchar(20),
    gender char(1),
    birth date,
    death date
);


desc pet;

select name, owner, sepecies, gender, birth, death from pet; 

insert 
into pet
value('한별','엄인주', 'dog', 'w','2020-09-10',null);

delete
from pet
where name = '한별';

load data local infile "c:\\pet.txt" into table pet;

#update death
update pet
set death = null
where name != 'Bowser';

#조회연습1: where
#1990년 이후에 태어난 아이들은?
select name, sepecies, birth 
from pet
where birth > '1990-12-31';

#Gwen과 함께 사는 아이들은?
select name, sepecies, owner
from pet
where owner = 'Gwen';

#null 다루기 1 : 살아있는 애들은?
select name, death
from pet
where death is null;

#null 다루기 2: 죽은 애들은?
select name, death
from pet
where death is not null;

#like search (패턴 매칭) : 이름이 b로 시작하는 아이들은?
select name from pet where name like 'b%';

#like search (검색 매칭) : 이름이 b로 시작하는 아이들 중 6자인 아이는?alter
select name from pet where name like 'b_____';

#집계 (통계) 함수
select count(*) from pet;

# 65, 66줄이 같고 62줄과는 차이가 있다. 
select count(death) from pet;
select count(*) from pet where death is not null;

