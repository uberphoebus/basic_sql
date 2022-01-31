-- 3��

SELECT *
FROM EMPLOYEES;

SELECT EMPLOYEE_ID, FIRST_NAME, LAST_NAME
FROM EMPLOYEES
ORDER BY EMPLOYEE_ID DESC;

select job_id
from EMPLOYEES;

select employee_id as �����ȣ, first_name as �̸�, last_name as ��
from EMPLOYEES;

select employee_id, 
    first_name||' '||last_name, 
    email||'@'||'company.com'
from EMPLOYEES;

select employee_id as �����ȣ, 
    salary as �޿�, 
    salary + 500 as �߰��޿�, 
    salary - 100 as ���ϱ޿�, 
    (salary * 1.1) / 2 as �����޿�
from EMPLOYEES;

select *
from EMPLOYEES
where employee_id >= 105;

select *
from EMPLOYEES
where salary between 10000 and 20000;

select *
from EMPLOYEES
where salary in (10000, 17000, 24000);

select *
from EMPLOYEES
where job_id like 'AD___';

select *
from EMPLOYEES
where MANAGER_ID is null;

select *
from EMPLOYEES
where salary > 4000
    and job_id = 'IT_PROG';

select *
from EMPLOYEES
where salary > 4000
    and job_id in ('IT_PROG', 'FI_ACCOUNT');

select *
from EMPLOYEES
where employee_id != 105;

select *
from EMPLOYEES
where manager_id is not null;

-- 4��
select last_name,
    lower(last_name) lower����,
    upper(last_name) upper,
    email,
    initcap(email) initcap
from employees;

select job_id, substr(job_id, 1, 2)
from employees;

select job_id, replace(job_id, 'ACCOUNT', 'ACCNT')
from employees;

select first_name, lpad(first_name, 12, '*') lpad������
from employees;

select job_id,
    ltrim(job_id, 'F') ltrim,
    rtrim(job_id, 'T') rtrim
from employees;

select 'start'||trim('   - space -   ')||'end'
from dual;

select salary,
    salary/30,
    round(salary/30, 0),
    round(salary/30, 1),
    round(salary/30, -1)
from employees;

select salary,
    salary/30,
    trunc(salary/30, 0),
    trunc(salary/30, 1),
    trunc(salary/30, -1)
from employees;

select TO_CHAR(sysdate, 'yy/mm/dd/hh24:mi'),
    sysdate+1,
    sysdate-1,
    to_date('20171202')-to_date('20171201'),
    sysdate + 13/24
from dual;

select sysdate,
    hire_date,
    months_between(sysdate, hire_date)
from employees
where department_id = 100;

select hire_date,
    add_months(hire_date, 3),
    add_months(hire_date, -3)
from employees
where employee_id between 100 and 106;

select hire_date,
    next_day(hire_date, '�ݿ���'),
    next_day(hire_date, 6)
from employees
where employee_id between 100 and 106;

select hire_date,
    last_day(hire_date)
from employees
where employee_id between 100 and 106;

select hire_date,
    round(hire_date, 'month'),
    round(hire_date, 'year'),
    trunc(hire_date, 'month'),
    trunc(hire_date, 'year')
from employees
where employee_id between 100 and 106;

select 1 + '2'
from dual;

select sysdate,
    to_char(sysdate, 'cc'), 
    to_char(sysdate, 'yyyy'), 
    to_char(sysdate, 'y,yyy'), 
    to_char(sysdate, 'year'), 
    to_char(sysdate, 'ad'), 
    to_char(sysdate, 'q'), 
    to_char(sysdate, 'mm'), 
    to_char(sysdate, 'month'), 
    to_char(sysdate, 'mon'), 
    to_char(sysdate, 'rm'), 
    to_char(sysdate, 'ww'), 
    to_char(sysdate, 'dd'),
    to_char(sysdate, 'day'),
    to_char(sysdate, 'dy'), 
    to_char(sysdate, 'j')
from dual;

select to_char(sysdate, 'hh:mi:ss PM'),
    to_char(sysdate, 'yyyy/mm/dd hh:mi:ss PM'),
    to_char(sysdate, 'hh-mi-ss PM'),
    to_char(sysdate, ' "��¥:" yyyy/mm/dd "�ð�:" hh:mi:ss PM')
from dual;

select to_char(salary, '999999999'),
    to_char(salary, '099999999'),
    to_char(salary, '$99999999'),
    to_char(salary, 'L99999999'),
    to_char(salary, '9999999.99'),
    to_char(salary, '999,999,999')
from employees;

select to_number('123')
from dual;

select to_date('20171007', 'yymmdd')
from dual;

select SALARY * nvl(COMMISSION_PCT, 1)
from EMPLOYEES
order by COMMISSION_PCT;

select first_name,
    last_name,
    department_id,
    salary,
    decode(department_id, 60, salary*1.1, salary),
    decode(department_id, 60, '10% �λ�', '���λ�')
from EMPLOYEES;

