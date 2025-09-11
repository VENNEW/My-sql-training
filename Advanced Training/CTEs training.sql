with male_cte as (
		select
			row_number() over(order by dem.employee_id) as list,
			dem.employee_id as User_ID,
            sal.dept_id as Dep_ID,
			concat(dem.first_name, ' ', dem.last_name) as Names,
			concat('(', age, ' ', 'yo', ')', ' ', birth_date) as Age_and_Birth_date,
            concat(left(salary, 2), 'k') as Salary,
            occupation
		from employee_demographics as dem
        join employee_salary as sal 
			on dem.employee_id = sal.employee_id
		where gender = 'male'
),
	woman_cte as (
		select
			row_number() over(order by dem.employee_id) as list,
			dem.employee_id as User_ID,
            sal.dept_id as Dep_ID,
			concat(dem.first_name, ' ', dem.last_name) as Names,
			concat('(', age, ' ', 'yo', ')', ' ', birth_date) as Age_and_Birth_date,
            concat(left(salary, 2), 'k') as Salary,
            occupation
		from employee_demographics as dem
        join employee_salary as sal 
			on dem.employee_id = sal.employee_id
		where gender = 'female'
)
select *
from woman_cte
union
select *
from male_cte
;