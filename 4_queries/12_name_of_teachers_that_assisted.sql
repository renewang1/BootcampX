SELECT DISTINCT teachers.name as teacher, cohorts.name as cohort
FROM teachers
INNER JOIN assistance_requests ON teacher_id = teachers.id
INNER JOIN students ON student_id = students.id
INNER JOIN cohorts ON cohort_id = cohorts.id
WHERE cohorts.name = 'JUL02'
ORDER BY teachers.name;