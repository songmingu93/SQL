SELECT
    *
FROM
    employees;

SELECT
    *
FROM
    departments;

-- 원하는 컬람만 조회하기
SELECT
    employee_id,
    first_name,
    last_name
FROM
    employees;


--예제)


SELECT
    first_name,
    last_name,
    phone_number,
    email,
    hire_date
FROM
    employees;


---출력할 때 컬럼에 별명 사용하기
SELECT
    employee_id  empno,
    first_name   "f-name",
    salart       "급여"
FROM
    employees;

--예제)
SELECT
    employee_id,
    first_name,
    last_name,
    salary,
    phone_number,
    email,
    hire_date
FROM
    employees;

--연결 연산자(concatenation)로 컬럼들 붙이기
SELECT
    first_name,
    last_name
FROM
    employees;

SELECT
    first_name || last_name
FROM
    employees;
    
    
-- ''따움표는 글자나 숫자 넣을 때 써야함    
SELECT
    first_name || 'hire date is' || hire_date "입사일"
FROM
    employees;


---산술 연산자 사용하기

select first_name || '-' || last_name "성명",
        salary "급여",
        salary*12 "연봉",
        salary*12+5000 "연봉2",
        phone_number "전화번호"
        
from employees;



--- where절

select first_name
from employees   --- 다 가져오는 것 
where department_id = 10; --- 조건이 붙으면서 10번에 하나만 가져온다 (지정)


--예제
select first_name, salary
from employees
where salary >= 15000;

select first_name,
        hire_date
from employees
where hire_date >= '07/01/01';

select salary
from employees
where first_name = 'Lex';


// &&=and  }}=or
// 예제 2
select first_name,
        salary
from employees
where salary >= 14000 
and   salary <- 17000 
        
        
-- IN 연산자로 여러 조건을 검사하기
select first_name, last_name, salary
from employees
where first_name in('Neena','Lex','John');

select first_name, last_name, salary
from employees
where first_name = 'Neena'
or first_name = 'Lex'
or first_name = 'John'







--예제
select first_name,
        salary
from employees
Where salary in (2100,3100,4100,5100);

--Like 연산자로 비슷한 것을 모두 찾기
select first_name
from employees 
where first_name like 'L';


-- 예제

select first_name, last_name, salary
from employess
where first_name Like '_a%';

select *
from employess
where first_name like '____a%';

select *
from employess
where first_name like '___a_'


// 예제 삭제 후 무작위로 풀어보기
