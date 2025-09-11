create temporary table male_table
select	
	row_number() over(order by dem.employee_id) as list,
	dem.employee_id as User_ID,
	sal.dept_id as Dep_ID,
	concat(dem.first_name, ' ', dem.last_name) as Names,
    gender,
	age,
    birth_date,
	concat(left(salary, 2), 'k') as Salary,
	occupation
from employee_demographics as dem
join employee_salary as sal 
	on dem.employee_id = sal.employee_id
where gender = 'male'
;

create temporary table woman_table
select
	row_number() over(order by dem.employee_id) as list,
	dem.employee_id as User_ID,
	sal.dept_id as Dep_ID,
	concat(dem.first_name, ' ', dem.last_name) as Names,
    gender,
	age,
    birth_date,
	concat(left(salary, 2), 'k') as Salary,
	occupation
from employee_demographics as dem
join employee_salary as sal 
	on dem.employee_id = sal.employee_id
where gender = 'female'
;

SELECT	*
FROM	woman_table 
UNION 
SELECT	*
FROM	male_table
;