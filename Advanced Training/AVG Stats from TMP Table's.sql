with male_stats as (
	select 
    gender,
	concat(left(avg(age), 2), ' ', 'yo') as avg_age,
    concat(left(avg(Salary), 2), 'k') as avg_Salary,
    count(Salary) as head_count
    from male_table
    group by gender
),
female_stats as (
	select 
    gender,
	concat(left(avg(age), 2), ' ', 'yo') as avg_age,
    concat(left(avg(Salary), 2), 'k') as avg_Salary,
    count(Salary) as head_count
    from woman_table
    group by gender
)
select *
from female_stats
union
select *
from male_stats
;