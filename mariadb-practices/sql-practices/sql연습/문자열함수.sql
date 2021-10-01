# 함수 : 문자열 함수

#upper
select upper('buSan'), upper('busan'), upper('Douzone');
select upper(first_name) from employees;

#lower
select lower('buSan'), lower('busan'), lower('Douzone');
select lower(first_name) from employees;

#substring(문자열, index, length)
select substring('Hello World', 3,2);
#예제 : 1989년에 입사한 사원들의 이름, 입사일 출력
select first_name, last_name, hire_date
from employees
where hire_date = substring(hire_date, 1, 4);

#lpad(오른쪽 정렬), rpad(왼쪽 정렬)
select lpad('1234', 10, '-'); 	# 10만큼의 자리를 주고 1234를 오른쪽으로 정렬, 남은 칸은 -로 채움?
select rpad('1234', 10, '-');

#예제 : 직원들의 월급을 오른쪽 정렬 빈공간은 8
select lpad(salary, 10, '*') from salaries;

#trim, ltrim, rtrim
select concat('---', ltrim('          hello                '), '---'); #왼쪽 공백을 제거.
select concat('---', rtrim('          hello                '), '---'); #오른쪽 공백을 제거.
select concat('---', trim(both' ' from '          hello                '), '---'); #both 뒤에 오는 것을 양쪽에 위치했을 시, 제거. trim(both'_' from '__________')
select concat('---', trim(both'z' from 'zzzzzzzzzzzhelzzlozzzzzz'), '---'); #both 뒤에 오는 것을 양쪽에 위치했을 시, 제거. trim(both'_' from '__________')