-- 예제
-- 현재 fai bale 이 근무하는 부서에서 근무하는 직원의 사번, 전체 이름을 출력해보세요.
select *
from employees a, titles b
where b.title = '9999-01-01';



 select sum(b.salary)
  from titles a, salaries b
  where a.to_date = b.to_date
	and a.to_date = '9999-01-01'
	and b.to_date = '9999-01-01'
    and a.title != 'Engineer'
    group by a.title
    having sum_salary > 200000000
    order by sum_salary desc;