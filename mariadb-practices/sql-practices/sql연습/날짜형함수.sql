#함수 : 날짜함수

#c
insert board values('...', '..', now());

#curdate(), current_date : 오늘 날짜만 나옴
select curdate(), current_date();

# 오늘 시간이 나옴
select curtime(), current_time();

#now()  < 쿼리가 실행되는 순간!, sysdate()< 이 함수가 실행되는 순간!
select now(), sysdate();
select now(), sleep(2), now();
select sysdate(), sleep(2), sysdate();

#date_format(date, format)
select date_format(now(), '%Y년 %m월 %d일 %h시 %i분 %s초');
select date_format(now(), '%Y년 %c월 %d일 %h시 %i분 %s초');

#period_diff
#YYMM, YYYYMM
#예제 : 근무 개월수를 출력
select first_name,
		period_diff(date_format(curdate(), '%Y%M'), date_format(hire_date,'%Y%M')) as month
from employees
order by period_diff(date_format(curdate(), '%Y%M'), date_format(hire_date,'%Y%M'));

select first_name,
		period_diff(date_format(curdate(), '%Y%M'), date_format(hire_date,'%Y%M')) as month
from employees
order by month desc;

#date_add(=addate), data_sub(=subdate)
#날짜를 date에 type(day, month, year) 형식으로 더하거나 뺀다.
#예제 : 각 사원들의 근무 년수가 5년이 되는 날은 언제인가요.
select first_name,
		hire_date,
		date_add(hire_date, interval 5 year)
from employees;

#cast
#select '12345' + 10, cast('12345' as int) + 10;
select date_format(cast('2021-10-01' as date), '%Y-%m-%d');
select cast(1-2 as unsigned);
select cast(cast(1-2 as unsigned) as signed);


#mysql type
#varchar, char, text, CLOB(Character Large OBject)
#signed(unsigned), int(integer), medium inst, big inst, int(11자)
#float, double
#time, date, datetime
#LOB : CLOB, BLOB 