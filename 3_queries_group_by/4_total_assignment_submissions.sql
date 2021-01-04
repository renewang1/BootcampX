SELECT cohorts.name as cohort, count(assignment_submissions.*) as total_submissions
FROM cohorts
INNER JOIN students ON cohorts.id = cohort_id
INNER JOIN assignment_submissions ON students.id = student_id
GROUP BY cohort
ORDER BY total_submissions DESC;