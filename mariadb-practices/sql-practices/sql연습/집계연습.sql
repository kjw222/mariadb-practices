# 집계쿼리 : select 그룹 함수가 적용이 된 경우.
select avg(salary)
from salaries;

#select 절에 그룹 함수가 있는 경우, 어떤 칼럼도 select절에 올 수 없다.
#emp_no 는 아무 의미가 없다. 오류지만 mysql은 오류를 띄우지는 않음. 근데 오류 맞음.
select emp_no, avg(salary)
from salaries;

#query 실행 순서
# 1) from : 접근 테이블 확인
# 2) where : 조건에 맞는 row 선택
# 3) 집계 
# 4) projection

select avg(salary)
	from salaries
where emp_no = '10060';


#group by 에 참여하고 있는 컬럼은 projection이 가능하다. selection 절에 올 수 있다.

select emp_no, avg(salary) as avg_salary
from salaries
group by emp_no;

#Having
#집계결과(결과 임시 테이블)에서 low를 선택해야 하는 경우..
#이미 where절은 실행이 되었기 때문에 having절에서 조건을 주어야한다. 
select emp_no, avg(salary)
from salaries
group by emp_no
having avg(salary)>60000;

#order by 
select emp_no, avg(salary)
from salaries
group by emp_no
having avg(salary)>60000
order by avg(salary) asc;

#예제 : salaries 테이블에서 사번이 10060인 직원의 급여 평균과 총합을 출력하시오.
#문법적으론 오류. mysql에서만 가능. 의미적으로는 맞다고 할 수 있지만..  
select emp_no, avg(salary), sum(salary)
from salaries
where emp_no='10060';

#예제 : salary