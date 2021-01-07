const { Pool } = require('pg');
const input = process.argv.slice(2);

const pool = new Pool({
  user: 'vagrant',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});

pool.query(`
SELECT DISTINCT teachers.name as teacher, cohorts.name as cohort
FROM teachers
INNER JOIN assistance_requests ON teacher_id = teachers.id
INNER JOIN students ON student_id = students.id
INNER JOIN cohorts ON cohort_id = cohorts.id
WHERE cohorts.name = '${input[0]}'
ORDER BY teachers.name;
`)
.then(res => {
  res.rows.forEach(teacher => {
    console.log(`${teacher.cohort}: ${teacher.teacher}`)
  })
});
