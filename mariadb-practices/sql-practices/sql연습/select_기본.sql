#select 연습
	desc employees;

	select * from departments;

	select dept_no, dept_name from departments;

# alias(as 생략가능)
#예제1 : employees table 에서 직원의 이름, 성별, 입사일을 출력.
select 	first_name as '이름' , 
		gender as '성별', 
		hire_date as '입사일' 
from employees;

#예제2 : employees 테이블에서 직원의 이름, 성별, 입사일을 출력 + concat 함수(칼럼 두개를 연결해서 출력.)
select 	concat( first_name, ' ', last_name) as '이름',
		gender as '성별', 
		hire_date as '입사일' 
from employees;

#distinct
#예제3 : title 테이블에서 모든 직급의 이름을 출력
select title from titles limit 0, 3;	#0인덱스부터 3개(인덱스 0, 인덱스 1, 인덱스 2)를 출력한다고 limit을 걸어줌.

select title from titles limit 2, 3;	#인덱스 2부터 3개를 출력. (인덱스 2, 인덱스 3, 인덱스 4) 페이징할 때 사용가능. < 풀스캔이므로 부하가 적지는 않음.

select distinct title from titles; #distinct 로 중복되는 내용은 출력하지 않는다. 
select distinct (title) from titles; #distinct 로 중복되는 내용은 출력하지 않는다. 괄호넣어도 사용가능.

#where 절 #1
#예제 : 1991년  이전에 입사한 직원의 이름, 성별, 입사일을 출력하시오.
select concat(first_name, ' ', last_name)as 이름, gender as 성별, hire_date as 입사일 
from employees
where hire_date < '1991-01-01'
order by hire_date desc;

#where 절 #2 논리 연산자
#예제 2 : 1989년 이전에 입사한 여직원의 이름, 입사일을 출력.
select concat(first_name, ' ',last_name), gender, hire_date 
from employees
where gender ='f' 
	and hire_date<'1989-01-01';

#where 절 #3 in 연산자
#예제 3 : dept_emp 테이블에서 부서번호가 d005나 d009에 속한 사원의 사번, 부서번호 < 합집합 구하는 문제. 

select emp_no, dept_no
from dept_emp
where dept_no = 'd005' 
	or dept_no = 'd009';
    
select emp_no, dept_no
from dept_emp
where dept_no in ( 'd005' , 'd009')
order by dept_no desc;


#like 절 #1 
#예제 1 : 1989년에 입사한 직원의 이름, 입사일을 출력
select concat(first_name, ' ' ,last_name), hire_date
from employees
where hire_date>'1989-01-01' and hire_date <'1989-12-31'
order by hire_date asc ;

select concat(first_name, ' ' ,last_name), hire_date
from employees
where hire_date like '1989%'
order by hire_date asc ;

select concat(first_name, ' ' ,last_name), hire_date  #between 은 조건 내용까지 모두 포함. =를 포함한다고 볼 수 있음.
from employees
where hire_date between '1989-01-01' and '1989-12-31'
order by hire_date asc ;

