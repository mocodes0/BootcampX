SELECT cohorts.name as cohort_name, count(students.*) as student_count
from cohorts 
join students on cohorts.id = cohort_id
GROUP BY cohorts.name
HAVING count(students.*)>=18
ORDER by count(students.*);