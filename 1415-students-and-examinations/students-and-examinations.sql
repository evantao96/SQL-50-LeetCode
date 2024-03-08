# Write your MySQL query statement below
WITH StudentSubjects AS
(
  SELECT student_id, student_name, subject_name
  FROM Students
  CROSS JOIN Subjects
)
SELECT StudentSubjects.student_id, student_name, StudentSubjects.subject_name, COUNT(Examinations.student_id) as attended_exams
FROM StudentSubjects
LEFT JOIN Examinations
ON StudentSubjects.student_id = Examinations.student_id AND StudentSubjects.subject_name = Examinations.subject_name
GROUP BY StudentSubjects.student_id, StudentSubjects.subject_name
ORDER BY StudentSubjects.student_id, StudentSubjects.subject_name;