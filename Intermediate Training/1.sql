select 
rank() over(partition by gender order by salary desc) as rank_sal,
dem.employee_id as id, 
concat(dem.first_name, ' ', dem.last_name) as Names , 
age, 
gender,
case
	when age > 40 then 'old'
    when age <= 40 then 'good'
end as for_work,
salary,
avg(salary) over(partition by gender) as sal_gen,
avg(age) over(partition by gender) as avg_age
from employee_demographics as dem
join employee_salary as sal
	on dem.employee_id = sal.employee_id
;
