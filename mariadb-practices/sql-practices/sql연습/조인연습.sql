#inner join
#예제 1) employees 테에블과 title 테이블을 joinㅏ여 직원의 이름과 직책을 모두 출력하시오.
select concat(emp.first_name, ' ',emp.last_name), ttl.title
from employees emp, titles ttl
where emp.emp_no = ttl.emp_no
and to_date = '9999-01-01';

#예제 2) employees 테이블과 titles 테이블을 join하여 직원의 이름과 직책을 출력하되, 여성엔지니어만 출력.
#where조건과 join조건 구분하기.
select concat(emp.first_name, ' ',emp.last_name), ttl.title, emp.gender
from employees emp, titles ttl
where emp.emp_no = ttl.emp_no
and ttl.to_date = "9999-01-01"
and emp.gender = 'f'
and ttl.title = 'engineer';


# ANSI/ISO SQL1999 JOIN 표준 문법

# 1) natural join : 두 테이블에 공통 컬럼이 있으면 별다른 조인 조건없이 암묵적으로 조인이 됨.
# 쓸일 없음.
select concat(emp.first_name, ' ',emp.last_name), ttl.title
from employees emp
natural join titles ttl
		# on emp.emp_no = ttl.emp_no 생략.
where emp.emp_no = ttl.emp_no
and to_date = '9999-01-01';		#row 선택조건

# 2) join ~ using
	select concat(emp.first_name, ' ',emp.last_name), ttl.title
	from employees emp join titles ttl using (emp_no)
where ttl.to_date = '9999-01-01';		#row 선택조건

# 3) join ~ on
	select concat(emp.first_name, ' ',emp.last_name), ttl.title
	from employees emp join titles ttl on emp.emp_no = ttl.emp_no
where ttl.to_date = '9999-01-01';		#row 선택조건empemp

#outer join
insert into dept values(null, '총무');
insert into dept values(null, '영업');
insert into dept values(null, '개발');
insert into dept values(null, '기획');
select * from dept;

insert into emp values(null, '둘리', 1);
insert into emp values(null, '마이콜', 2);
insert into emp values(null, '또치', 3);
insert into emp values(null, '길동', null);
select * from emp;

select a.name as '이름', b.name as '부서'
  from emp a join dept b on a.dept_no = b.no;
  
select a.name as '이름', ifnull(b.name, '없음') as '부서'
  from emp a left join dept b on a.dept_no = b.no;

select a.name as '이름', b.name as '부서'
  from emp a right join dept b on a.dept_no = b.no;
 