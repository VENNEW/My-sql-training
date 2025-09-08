select *
From employee_salary
;
select occupation, count(occupation)
From employee_salary
group by occupation
;
select salary, count(salary)
From employee_salary
group by salary
;
select dept_id, count(dept_id)
From employee_salary
group by dept_id
;