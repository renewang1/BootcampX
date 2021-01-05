  SELECT AVG(total_duration) as average_total_duration
  FROM (
  SELECT SUM(completed_at - started_at) as total_duration
  FROM cohorts
  INNER JOIN students ON cohort_id = cohorts.id
  INNER JOIN assistance_requests ON student_id = students.id
  GROUP BY cohorts.name
  ORDER BY total_duration
  ) as totals_table;