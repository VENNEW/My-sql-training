select *
From employee_demographics
;
select avg(age)
From employee_demographics
;
select distinct gender
From employee_demographics
order by gender
;
select count(*)
From employee_demographics
where age > 40
;
select *
From employee_demographics
where first_name like '%a%' and last_name like '%e_'
;