--문제1
select count(manager_id) "haveMngCnt"
from employees
where manager_id is not null;

--문제2
select  max(salary) "최고임금",
        min(salary) "최저임금",
        max(salary)-min(salary) "최고임금 - 최저임금"
from employees;

--문제3
select to_char(max(hire_date), 'YYYY"년" MM"월" DD"일"') "막내직원 입사일"
from employees;

--문제4
select  avg(salary) "평균임금",
        max(salary) "최고임금",
        min(salary) "최저임금",
        department_id "부서아이디"
from employees
group by department_id
order by department_id desc;
-- avg max min, department_id 2개 이상의 행이 들어가므로 group를 지정하여 묶어 결과를 돌려받는다.

--문제5
select  min(salary) "최저임금",
        avg(salary) "평균임금",
        max(salary) "최고임금",
        job_id "업무아이디"
from employees
group by job_id
order by min(salary) desc, round(avg(salary), 0) asc;
-- 2500구간일 때 확인?

--문제6
select to_char(min(hire_date), 'YYYY-MM-DD DAY')
from employees;

--문제7
select  department_id "부서",
        avg(salary) "평균임금",
        min(salary) "최저임금",
        avg(salary)-min(salary) "평균임금-최저임금"
from employees
group by department_id
having avg(salary)-min(salary) <= 2000
order by "평균임금-최저임금" desc;


--문제8
select  job_id "업무",
        max(salary)-min(salary) "최고-최저 임금"
from employees
group by job_id
order by max(salary)-min(salary) desc;

--문제9
select  employee_id,
        avg(salary) "평균급여",
        min(salary) "최소급여",
        max(salary) "최대급여"
from employees
where hire_date > '05/12/12'
group by employee_id
having avg(salary) >= 5000
order by round(avg(salary),0) desc;



--문제10
select  first_name "이름",
        hire_date "입사일",
        case when hire_date <= '02/12/31' then '창립멤버'
             when hire_date <= '03/12/31' then '03년입사'
             when hire_date <= '04/12/31' then '04년입사'
             else '상장이후입사'
        end "optData"
from employees
order by hire_date asc;

---------------------
select *
from job_history

select *
from jobs

select *
from employees

select *
from departments

select * 
from countries


select *
from regions