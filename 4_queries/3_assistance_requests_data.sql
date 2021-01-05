SELECT teachers.name as teacher, students.name as student, assignments.name as assignment, (assistance_requests.completed_at - assistance_requests.started_at) as duration
FROM teachers
INNER JOIN assistance_requests ON teacher_id = teachers.id
INNER JOIN students ON student_id = students.id
INNER JOIN assignments ON assignment_id = assignments.id
ORDER BY duration;